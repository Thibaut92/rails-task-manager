class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    # We'll see that in a moment.
    @task = Task.new
  end
  def create
    @task = Task.create(params[task])

  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:title, :details])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
