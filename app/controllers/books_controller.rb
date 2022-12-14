class BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_book, only: %i[ show edit update destroy ]

  # GET /books or /books.json
  def index
    current_page = (params[:page] || 1).to_i
    # Pesquisa
    @q = Book.ransack(params[:q])
    @books = @q.result.page(current_page).per(4)
    authorize @books

    
    
  end

  # GET /books/1 or /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
    authorize @book
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to book_url(@book), notice: "O livro foi criado com sucesso." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to book_url(@book), notice: "O livro foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    if @book.destroy
      respond_to do |format|
        format.html { redirect_to books_url, notice: "O livro foi excluído com sucesso." }
        format.json { head :no_content }
      end
    else
      redirect_to books_url, alert: @book.errors.messages[:base][0]
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
      authorize @book
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:name, :author, :desc, :isbn, :date, :category_ids => [])
    end
end
