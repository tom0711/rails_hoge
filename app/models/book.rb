class Book < ApplicationRecord

  enum status: %w(reservation now_on_sale end_of_print)

  # ハッシュ型で定義することもできる
  # enum status: {reservation: 0, now_on_sale: 1, end_of_print: 2}

  scope :costly, -> {where("price > ?", 3000)}
  scope :written_about, -> (theme) {where("name like ?", "%#{theme}%")}
  default_scope -> {order("published_on desc")}

  belongs_to :publisher

  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :name, presence: true
  validates :name, length: {maximum:15}
  validates :price, numericality: {greater_than_or_equel_to:0}

  validate do |book|
    if book.name.include?("exercise")
      book.errors[:name] << "I don't like exercise."
    end
  end

  before_validation do |book|
    book.name = book.name.gsub(/Cat/) do |matched|
      "lovely #{matched}"
    end
  end

  # あるいはメソッドを使って以下のようにもかける
  # before_validation :add_lovely_to_cat
  # def add_lovely_to_cat
  #   book.name = book.name.gsub(/Cat/) do |matched|
  #     "lovely #{matched}"
  #   end
  # end

  after_destroy do |book|
    Rails.logger.info "Book is deleted: #{book.attributes.inspect}"
  end

  def high_price?
    price >= 5000
  end

  after_destroy :if => :high_price? do |book|
    Rails.logger.warn "Book with high price is deleted: #{book.attributes.inspect}"
    Rails.logger.warn "Please check!!"
  end
end
