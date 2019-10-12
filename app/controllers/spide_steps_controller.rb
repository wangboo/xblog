class SpideStepsController < ApplicationController

  def new
    task = SpideTask.find(params[:spide_task_id])
    task.spide_steps.create!
    redirect_to edit_spide_task_path(task)
  end

  def destroy
    SpideStep.find(params[:id]).destroy
    redirect_to edit_spide_task_path(params[:spide_task_id])
  end

  def update
    data = params.require(:spide_step).permit!
    step = SpideStep.find(params[:id])
    step.update(data)
    redirect_to edit_spide_task_path(params[:spide_task_id])
  end

end
