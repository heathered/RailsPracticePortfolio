class TagsController < ApplicationController
  
  def index
    @tags = Tag.all
  end
  
  def new
    @tag = Tag.new
  end
  
  def create
    # raise "#{params[:project]}"
    @tag = Tag.new(params[:tag])
    
    if @tag.save
      redirect_to tags_path
    else
      render 'new'
    end
  end
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def edit
    @tag = Tag.find(params[:id])
  end
  
  def update
    @tag = Tag.find(params[:id])
    
    if @tag.update_attributes(params[:tag])
      redirect_to tag_path(@tag.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    
    redirect_to tags_path
  end
  
  
end
