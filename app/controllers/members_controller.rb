class MembersController < ApplicationController

  def index
    if current_member
      @games ||= Game.where(host: current_member.id)
    end
    @members = Member.all
  end
end
