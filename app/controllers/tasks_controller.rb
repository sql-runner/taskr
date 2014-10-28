class TasksController < ApplicationController
  
  def index
    @task = Task.new

  end

  def create
    @task = current_user.tasks.new(task_params)

    if @task.save
      redirect_to root_path 
    else
      redirect_to :back
    end
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end

end
