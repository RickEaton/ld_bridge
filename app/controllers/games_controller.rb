class GamesController < ApplicationController
  def new

  end

  def create
    @game = Game.new
    logger.debug params[:host]
    @game.host = params[:host]
    @game.time_started =  DateTime.now
    @game.deck = Deck.create(game: @game)
    Player.create(game: @game, member_id: @game.host, position: 'North')
    if @game.save
      flash[:notice] = 'You are ready to invite some members to your game.'
    else
      flash[:error] = "Errors occurred in starting this game: #{@game.errors.full_messages}"
    end
    redirect_to members_path
  end

  def update
  end

  def destroy
    @game = Game.find(params[:id])
    @game.players.delete_all if @game.players.any?
    @game.deck.delete unless @game.deck.nil?
    if @game.delete
      flash[:notice] = 'You have successfully ended and removed a game.'
    else
      flash[:error] = "Errors occurred in ending this game: #{@game.errors.full_messages}"
    end
    redirect_to members_path
  end
end
