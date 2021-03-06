class ProjectsController < ApplicationController
  before_filter :authorize
  before_filter :authorize_admin, :only => "new"
  
  def index
    @projects = Project.comics
  end

  def show
    @project = Project.find(params[:id])
    if @project.name == "Admin" 
      authorize_admin
    end
    @comment = @project.comments.new
    @place = @project
    @item = Item.new
    @task = Task.new
    @taskplace = @project
    
    @isIdeaPot = (@project.name == "Idea Pot")
    #@file = File.new
  end
  
  def createComic
    @comic = Project.create_comic(params[:name], params[:description])
    redirect_to @comic, :notice => 'Comic was successfully created.'
  end

  def new
    @project = Project.new
    @projects = Project.comics
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, :notice => 'Project was successfully created.' }
        format.json { render :json => @project, :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.json { render :json => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, :notice => 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
