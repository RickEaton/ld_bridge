class Trick < ApplicationRecord

  belongs_to :player, optional: true
  has_many :cards, optional: true

end
