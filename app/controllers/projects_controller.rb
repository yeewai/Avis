class ProjectsController < ApplicationController
  before_filter :authorize
  before_filter :authorize_admin, :only => "new"
  
  def index
    @projects = Project.where(:parent_id => 0, :variety => 'Comic')
  end

  def show
    @project = Project.find(params[:id])
    @comment = @project.comments.new
    @place = @project
    @item = Item.new
    @task = Task.new
    @taskplace = @project
    #@file = File.new
  end
  
  def createComic
    @comic = Project.create(:name => params[:name], :description => params[:name], :parent_id => 0,
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Notes", 
        :description => "Feel free to post random files pertaining to the comic here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Scripts", :description => "Scripts for the comic go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Character Designs", 
        :description => "Designs for characters and costumes go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Storyboards", 
        :description => "Storyboards and rough rough sketches for the pencils go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")    
    @comic.categories.create(:name => "Pencils", :description => "Pencils go here.",
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Inks", :description => "Inked pages go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Colours", :description => "Coloured pages go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Letters", :description => "Lettered and final pages go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")    
    
    
    redirect_to @comic, :notice => 'Comic was successfully created.'
  end

  def new
    @project = Project.new
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
