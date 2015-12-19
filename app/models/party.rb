class Party < ActiveRecord::Base
  has_many :orders
  has_many :menus, through: :orders
  has_many :mods, through: :orders
end
