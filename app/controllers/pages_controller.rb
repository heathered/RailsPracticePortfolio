class PagesController < ActionController::Base
  
  def index
    @articles = Article.published
    
    @projects = ClassProject.featured
    
  end
  
  def welcome
    
  end
end
