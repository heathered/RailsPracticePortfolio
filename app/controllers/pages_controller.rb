class PagesController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show]
    
  def index
    @articles = Article.published
    @recent = Article.published.last(3).reverse
    
    @projects = ClassProject.featured
    
  end
  
  def welcome
    
  end
end
