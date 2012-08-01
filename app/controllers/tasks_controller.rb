class TasksController < ApplicationController
  before_filter :authorize
  
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(params[:task])
    if @task.owner_id.nil? 
      @task.state = Task::TASK_ORPHANED
    else
      @task.state = Task::TASK_ASSIGNED
    end
      
    respond_to do |format|
      if @task.save
        format.html { redirect_to @task.project, :notice => 'Task was successfully created.' }
        format.json { render :json => @task, :status => :created, :location => @task }
      else
        format.html { redirect_to @task.project, :notice => 'Task had a blank field.'}
        format.json { render :json => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task.project, :notice => 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end
end
