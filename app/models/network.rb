class Network < ActiveRecord::Base
  has_many :shows
  has_many :actors, through: :shows
  has_many :characters, through: :actors
end
