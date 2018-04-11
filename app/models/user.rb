class User < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  has_many   :todo_movies,
             :through => :favorites,
             :source => :movie

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
