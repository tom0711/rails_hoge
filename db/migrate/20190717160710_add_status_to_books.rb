class AddStatusToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :status, :integer
  end
end
