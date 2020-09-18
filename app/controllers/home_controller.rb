class HomeController < ApplicationController
  def index
    @books = Book.all
  end

  def new

    genre_tags = ['Mystery', 'Fiction', 'Non Fiction', 'Action', 'Fantasy', 'Thriller', 'Adventure', 'Other']
    
    @genre_list = []
    genre_tags.each do |g|
      @genre_list << [g, g]
    end
    
    if request.post?
      create()
    else
      #handle gets
      puts "HELLO?"
      @book = Book.new
    end
  end

  def create
    
    genre_tags = ['Mystery', 'Fiction', 'Non Fiction', 'Action', 'Fantasy', 'Thriller', 'Adventure', 'Other']
    
    @genre_list = []
    genre_tags.each do |g|
      @genre_list << [g, g]
    end
    
    @book = Book.new(title: params[:book][:title], author: params[:book][:author], genre: params[:genre], price: params[:book][:price].to_f, published_date: params[:book][:published_date])
    @book.save
    # book = Book.new(params.require(:book).permit(:title, :author, :genre, :price))
    # puts p['title']
    redirect_to({action: :index})
  end
  
  def read
    @book = Book.where({id: params[:id]})
    if @book.size == 0
      render('book_not_found')
      return
    else
      @book = @book[0]
    end
  end

  def update

    genre_tags = ['Mystery', 'Fiction', 'Non Fiction', 'Action', 'Fantasy', 'Thriller', 'Adventure', 'Other']
    
    @genre_list = []
    genre_tags.each do |g|
      @genre_list << [g, g]
    end
    
    if request.post?
      p = params[:book]
      @book = Book.where({id: params[:id]})

      if @book.size == 0
        render('book_not_found')
        return
      else
        @book = @book[0]
      end
      
      @book.title = p[:title]
      @book.author = p[:author]
      @book.genre = params[:genre]
      @book.price = p[:price].to_f
      @book.published_date = p[:published_date]
      @book.story = params[:story]
      @book.save
      
    else
      @book = Book.where({id: params[:id]})

      if @book.size == 0
        render('book_not_found')
      else
        @book = @book[0]
      end
    end
  end

  def delete
    @book = Book.find(params[:id].to_i)
    @book.destroy
    puts @book
    puts "The params are: #{params}"
    redirect_to({action: :index})
  end
  
end
