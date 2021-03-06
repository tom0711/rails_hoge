class BooksController < ApplicationController
  # def show
  #   @book = Book.find(params[:id])
  #   respond_to do |format|
  #     format.html
  #     format.csv
  #     format.json
  #   end
  # end
  #
  # before_action :set_book, only: [:show, :edit, :update, :destroy]
  #
  # def set_book
  #   @book = Book.find(params[:id])
  # end

  # def show
  #   @book = Book.find(params[:id])
  #   render :show
  # end

  # renderの省略
  # def show
  #   @book = Book.find(params[:id])
  # end

  # コンテンツのタイプによって表示を出し分ける
  # def show
  #   @book = Book.find(params[:id])
  #   respond_to do |format|
  #     format.html
  #     format.csv
  #   end
  # end

  # jbuilder
  def show
    @book = Book.find(params[:id])
    respond_to do |format|
      format.json
    end
  end
end
