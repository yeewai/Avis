class CommentsController < ApplicationController
  before_filter :authorize
  def index
    @comments = Comment.all
    @place = find_place
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def find_place
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
  

  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(params[:comment])
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.place, :notice => 'Comment was successfully created.' }
      else
        format.html {redirect_to @comment.place, :notice => 'Comment was left blank.' }
        format.json { render :json => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, :notice => 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment_place = @comment.place
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @comment_place }
      format.json { head :no_content }
    end
  end
end
