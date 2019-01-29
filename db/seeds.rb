# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times {
  string = "sample/cat"+rand(10).to_s+".jpg".to_s
  Board.create({image: string ,category: "cat", status: "wait", user_id: 1})
}