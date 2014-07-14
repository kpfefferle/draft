class PagesController < ApplicationController

  def home
    @next_pick = Pick.next_available
    @recent_picks = Pick.recent
  end
end
