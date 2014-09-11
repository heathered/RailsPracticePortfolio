class LikesController < ApplicationController

  def index
    
    redirect_to articles_path
  end
  
  def create
    @like = Like.new(params[:like])
    
    if @like.save
      redirect_to article_path(params[:like][:article_id])
    else
      redirect_to root_path
    end
  end
  
end
