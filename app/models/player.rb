class Player < ApplicationRecord

  belongs_to :game
  has_many :cards
  has_many :tricks
  belongs_to :member
  # scope :available, -> { where('activity_date > ? ', Date.parse(Constant::PRIOR_PROGRAM_YEAR.to_s + '-9-1'))}

  def name
    member.name
  end

  def status
    if game.host == member.id
      return 'Host'
    end
    'Other Status'
  end
end
