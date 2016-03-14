class Board < ActiveRecord::Base
  # association
  has_many :favorites, dependent: :delete_all
  belongs_to :user
end
