class TasksController < ApplicationController
  before_action :set_task, only: %i[show]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.begin_date = Time.now.strftime("%H")
    if @task.save
      redirect_to tasks_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @tasks = Task.all
  end

  def show
  end

  # ---------------------------------
  # private methods
  # ---------------------------------
  private

  def task_params
    params.require(:task).permit(:title, :content, :duration, :urgence, :importance, :activity)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
