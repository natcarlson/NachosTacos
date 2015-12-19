class Mod < ActiveRecord::Base
  has_many :orders
  has_many :parties, through: :orders
end
