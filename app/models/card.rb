class Card < ActiveRecord::Base
  # association
  has_many :bookmarks,   dependent: :delete_all
  has_many :board_cards, dependent: :delete_all
end
