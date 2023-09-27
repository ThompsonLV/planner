class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to days_path()
  end

  private

  def task_params
    params.require(:task).permit(:title, :content, :duration, :urgence, :importance, :activity)
  end
end
