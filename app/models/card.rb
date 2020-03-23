class Card < ApplicationRecord

  belongs_to :player, optional: true
  belongs_to :deck
  belongs_to :trick, optional: true

end
