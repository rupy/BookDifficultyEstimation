class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :set_count
  before_action :set_distribution

  # GET /books
  # GET /books.json
  def index
    @books = Book.estimated
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new

    @book = Book.has_contents.random_order.first
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      # 短絡評価
      if @book.update(book_params)
        format.html { redirect_to new_book_url , notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    def set_count
      @count_estimated = Book.estimated.count
      @count_not_estimated = Book.not_estimated.count
      @count_all = Book.all.count
    end

    def set_distribution
      @distribution_array = Book.distribution
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :asin, :node_id, :browsenode, :author, :manufacture, :url, :amount, :contents, :pre_processed_contents, :difficulty)
    end
end
