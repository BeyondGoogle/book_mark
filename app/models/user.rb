class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # association
  has_many :bookmarks,       dependent: :delete_all
  has_many :cards,           through: :bookmarks
  has_many :favorites,       dependent: :delete_all
  has_many :favorite_boards, through: :favorites, source: :boards
  has_many :created_boards,  dependent: :delete_all
end
