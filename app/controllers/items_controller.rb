class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @project = Project.find(@item.project_id)
    @medium = Medium.new
    @comment = Comment.new
    @place = @item
    
    
    if @item.media.count > 0
      redirect_to @item.media.last
    end 
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    @project = Project.find(@item.project_id)
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { redirect_to @project, notice: 'Item needs a name!' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  
    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end
  end
end
