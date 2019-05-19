class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :season_users
  has_many :seasons, through: :season_users
  has_many :movie_users
  has_many :movies, through: :movie_users
end
