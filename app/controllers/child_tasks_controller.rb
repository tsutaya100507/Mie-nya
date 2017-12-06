class ChildTasksController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @child_task = @task.child_tasks.create(child_task_params)
    redirect_to root_path
  end

  def edit
  end

  def destroy
    @child_task = ChildTask.find(params[:id])
    @child_task.destroy
    redirect_to root_path
  end

  def toggle
    # ↓redirect_to root_pathと同義
    render nothing: true
    @child_task = ChildTask.find(params[:id])
    # ↓child_taskのdoneの値をひっくり返す
    @child_task.done = !@child_task.done
    @child_task.save
  end

  private

    def child_task_params
      params.require(:child_task).permit(:title)
    end
end
