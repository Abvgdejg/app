class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "123", password: "123", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    #if params[:id].to_i<=Article.last.id
      @article = Article.friendly.find(params[:id])
    #else redirect_to root_path
    #end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.friendly.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end


  private
    def article_params
      a = params.require(:article).permit(:title, :body, :status, :slug)
      a[:slug] = a[:title]
      a
    end
end