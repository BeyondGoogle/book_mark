class Bookmark < ActiveRecord::Base
  # association
  belongs_to :card
  belongs_to :user
end
