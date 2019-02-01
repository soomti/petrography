# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30.times {
  string = "app/assets/images/sample/cat"+(rand(10)+1).to_s+".jpg".to_s
  Board.create({image: open((string)) ,category: "cat", status: "wait", user_id: "1"})
  puts "save"
}