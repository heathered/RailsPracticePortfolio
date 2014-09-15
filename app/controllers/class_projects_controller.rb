class ClassProjectsController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show]
  
  def index
    @projects = ClassProject.all
  end
  
  def new
    @project = ClassProject.new
  end
  
  def create
    # raise "#{params[:project]}"
    params[:class_project][:tag_ids] ||= []
    @project = ClassProject.new(params[:class_project])
    
    if @project.save
      redirect_to class_projects_path
    else
      render 'new'
    end
  end
  
  def show
    @project = ClassProject.find(params[:id])
  end
  
  def edit
    @project = ClassProject.find(params[:id])
  end
  
  def update
    params[:class_project][:tag_ids] ||= []
    @project = ClassProject.find(params[:id])
    
    if @project.update_attributes(params[:class_project])
      redirect_to class_project_path(@project.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @project = ClassProject.find(params[:id])
    @project.destroy
    
    redirect_to class_projects_path
  end
  
end
