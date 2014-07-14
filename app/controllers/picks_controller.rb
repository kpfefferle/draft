class PicksController < ApplicationController

  def index
    @picks = Pick.completed
  end

  def edit
    @pick = Pick.find(params[:id])

    unless @pick == Pick.next_available
      redirect_to edit_pick_path(Pick.next_available)
    end
  end

  def update
    @pick = Pick.find(params[:id])
    @pick.update_attributes(pick_params)
    if @pick.save
      flash[:success] = "Draft pick submitted successfully."

      if Pick.available.any?
        redirect_to edit_pick_path(Pick.next_available)
      else
        redirect_to root_path
      end
    else
      flash[:error] = "There was an error sumbitting the draft pick."
      render :edit
    end
  end

  private

  def pick_params
    params.require(:pick).permit(:player_id)
  end
end
