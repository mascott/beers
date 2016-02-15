class Beverage < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings

  validate :upc_length
  validates_presence_of :upc

  def upc_length
    unless upc.size == 8 or upc.size == 12
      errors.add(:upc, "length must be 8 or 12")
    end
  end
end
