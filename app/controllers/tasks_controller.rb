class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.rank(:row_order)
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      respond_to do |format|
        format.html {redirect_to root_path}
        format.json
      end
    else
      redirect_to root
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  def sort
    task = Task.find(params[:id])
    task.update(task_row_params)
    render nothing: true
  end

  private
  def task_params
    params.require(:task).permit(:task, :type)
  end

  def task_row_params
    params.require(:task).permit(:task, :row_order_position)
  end
end
