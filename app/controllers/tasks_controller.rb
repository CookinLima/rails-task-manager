class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # raise
  end

  def show
    @task = Task.find(params[:id])
    # raise
  end
end
