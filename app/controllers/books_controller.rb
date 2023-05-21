class BooksController < ApplicationController

    def show
        @book = Book.find(params[:id])
    end

    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    def edit
        @book = Book.find(params[:id])
    end

    def create
       @book = Book.new(params.require(:book).permit(:title, :description, :price, :count))
      if  @book.save
        flash[:notice] = "Books was Created Successfully."
       redirect_to @book
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
        @book = Book.find(params[:id])
        if @book.update(params.require(:book).permit(:title, :description, :price, :count))
            flash[:notice] = "Books Updated Successfully"
            redirect_to @book
        else
            render :edit, status: :unprocessable_entity
        end

    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        flash[:notice] = "Your books has been deleted"
        redirect_to  books_path 

    end



end