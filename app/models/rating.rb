class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :beverage

  validates_presence_of :user
  validates_presence_of :beverage
  validates_inclusion_of :value, :in => 1..5

  delegate :name, prefix: true, to: :user
  delegate :name, prefix: true, to: :beverage
end
