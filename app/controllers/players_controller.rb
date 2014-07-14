class PlayersController < ApplicationController

  def index
    @players = Player.available_by_position
  end
end
