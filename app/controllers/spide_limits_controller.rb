class SpideLimitsController < ApplicationController

  def new
    id = params[:spide_task_id]
    SpideTask.find(id).spide_limits.create
    redirect_to edit_spide_task_path(id)
  end

  def destroy
    SpideLimit.delete(params[:id])
    redirect_to edit_spide_task_path(params[:spide_task_id])
  end

  def update
    data = params.require(:spide_limit).permit!
    SpideLimit.find(params[:id]).update(data)
    redirect_to edit_spide_task_path(params[:spide_task_id])
  end

end
