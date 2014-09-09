class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @drafts = Article.where('draft = true')
    @published = Article.where('draft = false')
  end
  
  def new
    @article = Article.new
  end
  
  def create
    # raise "#{params[:article]}"
    @article = Article.new(params[:article])
    
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    
    if @article.update_attributes(params[:article])
      redirect_to article_path(@article.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to articles_path
  end
  
end
