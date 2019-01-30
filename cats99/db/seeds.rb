# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Cat.destroy_all
cat1 = Cat.create!(name: "Eric", birth_date: '04/05/1995', sex: "M",color: 'yellow',description: "hella sexy")
cat1 = Cat.create!(name: "Vishal", birth_date: '08/10/1975', sex: "M",color: 'brown',description: "hella tall")

end