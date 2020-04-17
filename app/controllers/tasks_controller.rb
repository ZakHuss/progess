class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :destroy, :update]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:notice] = "Task created successfuly."
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update(task_params)
      flash[:notice] = "Task updated successfully."
      redirect_to task_path(@task)
    else
      render :edit
    end
  end

  def destroy
    if @task.destroy
      flash[:notice] = "Task deleted successfully."
      redirect_to tasks_path
    end
  end

  private
  def task_params
    params.require(:task).permit(:content)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end