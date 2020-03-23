class PlayersController < ApplicationController

  def add_to_game
    Player.create(game_id: params[:game_id], member_id: params[:member_id])
    redirect_to members_path
  end
end
