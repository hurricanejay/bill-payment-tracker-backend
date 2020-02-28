# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bill.destroy_all

user1  = User.create!(username: "bobette", password: "123" )

bill1 = Bill.create!(user: user1, company_name: "Verizon", amount: 109.15, payment_due: Time.now + 4.days, category: "Internet")
bill2 = Bill.create!(user: user1, company_name: "Nordstrom", amount: 220.65, payment_due: Time.now + 9.days, category: "Shopping")
bill4 = Bill.create!(user: user1, company_name: "AT&T", amount: 75.44, payment_due: Time.now + 12.days, category: "Mobile Phone")
bill3 = Bill.create!(user: user1, company_name: "Con Edison", amount: 97.12, payment_due: Time.now + 15.days, category: "Category" )
