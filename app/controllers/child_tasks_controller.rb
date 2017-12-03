class ChildTasksController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @child_task = @task.child_tasks.create(child_task_params)
    redirect_to root_path
  end

  def edit
  end

  def destroy
    @child_task = Child_task.find(params[:id])
    @child_task.destroy
    redirect_to root_path
  end

  private

    def child_task_params
      params.require(:child_task).permit(:title)
    end
end
