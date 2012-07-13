class MediaController < ApplicationController
  before_filter :authorize
  def index
    @media = Medium.all
  end
  
  def show
    @medium_current = Medium.find(params[:id])
    @item = Item.find(@medium_current.item_id)
    @project = Project.find(@item.project_id)
    @uploader = User.find(@medium_current.user_id)
    
    @place = @medium_current
    @taskplace = @item
    @comment = Comment.new
    @medium = Medium.new
    @task = Task.new
    
  end

  def create
    @medium = Medium.new(params[:medium])

    respond_to do |format|
      if @medium.save
        format.html { redirect_to @medium, notice: 'Medium was successfully created.' }
        format.json { render json: @medium, status: :created, location: @medium }
      else
        format.html { render action: "new" }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @medium = Medium.find(params[:id])

    respond_to do |format|
      if @medium.update_attributes(params[:medium])
        format.html { redirect_to @medium, notice: 'Medium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media/1
  # DELETE /media/1.json
  def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy
  
    respond_to do |format|
      format.html { redirect_to media_url }
      format.json { head :no_content }
    end
  end
end
