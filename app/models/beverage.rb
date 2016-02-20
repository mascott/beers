class Beverage < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings

  validates_presence_of :upc
end
