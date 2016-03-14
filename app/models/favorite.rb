class Favorite < ActiveRecord::Base
  # association
  belongs_to :board
  belongs_to :user
end
