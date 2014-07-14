class PicksController < ApplicationController

  def edit
    @pick = Pick.find(params[:id])

    unless @pick == Pick.next_available
      redirect_to edit_pick_path(Pick.next_available)
    end
  end
end
