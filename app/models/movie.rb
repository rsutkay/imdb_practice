class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :favorites,
             :dependent => :destroy

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  has_many   :fans,
             :through => :favorites,
             :source => :user

  has_many   :actors,
             :through => :castings,
             :source => :actor

  # Validations

end
