class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :player
  scope :not_in_game, -> (game_id) { where('id NOT IN (?)', Player.where(game_id: game_id).pluck(:member_id)) }
end
