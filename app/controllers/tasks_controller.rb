class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # raise
  end

  def show
    @task = Task.find(params[:id])
    # raise
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path()
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
