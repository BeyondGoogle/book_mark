class Board < ActiveRecord::Base
  # association
  has_many   :board_cards, dependent: :delete_all
  has_many   :cards,       through: :board_cards
  has_many   :favorites,   dependent: :delete_all
  has_many   :users,        through: :favorites
  belongs_to :user
end
