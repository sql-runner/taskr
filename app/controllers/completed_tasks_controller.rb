class CompletedTasksController < ApplicationController
  def create
    @task = Task.find(params[:id])
    @task.update(completed: true)

    redirect_to :back
  end
end
