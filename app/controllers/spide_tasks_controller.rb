class SpideTasksController < ApplicationController

  def new
    s = SpideTask.create(user_id: 1, flag: '')
    redirect_to edit_spide_task_path(s)
  end

  def edit
    @s = SpideTask.find(params[:id])
  end

  def destroy
    SpideTask.delete(params[:id])
    redirect_to spide_tasks_path
  end

end
