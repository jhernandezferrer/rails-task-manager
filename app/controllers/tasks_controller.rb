class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to @task
  end
  
  def show
  end

  def edit
  end

  def update
    @task.update(tasks_params)
    redirect_to @task
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def tasks_params
     params.require(:task).permit(:title, :details, :complete)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
