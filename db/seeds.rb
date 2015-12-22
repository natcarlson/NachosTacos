# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manager.create(man_num: '100', man_name: 'nat', password: 'nat')
Menu.create(item_name: 'chicke burrito', item_class: 'burrito', item_price: '11.00')
Mod.create(mod_name: 'guacamole', mod_class: 'topping', mod_price: '2.00')
