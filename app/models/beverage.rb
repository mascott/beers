class Beverage < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings
end
