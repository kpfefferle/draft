class TeamsController < ApplicationController

  def index
    @teams = Team.ordered
  end
end
