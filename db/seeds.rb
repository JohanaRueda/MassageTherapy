# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "John Smith",
            email: "john.smith@gmail.com",
            password:              "password",
            password_confirmation: "password",
            address: "foobar",
            phone: "8880001111",
            license: "12345678",
            admin:     true)

User.create!(name:  "Jane Smith",
            email: "jane.smith@gmail.com",
            password:              "password",
            password_confirmation: "password",
            address: "foobar",
            phone: "8880002222",
            license: "12341234",
            admin:     false)

#User.create!(name:  "Example User",
#             email: "example@railstutorial.org",
#             password:              "foobar",
#             password_confirmation: "foobar",
#             address: "foobar",
#             phone: "8880001111",
#             license: "12345678",
#             admin:     true)
             
#99.times do |n|
#  name  = "#{n} Bar"
#  email = "example-#{n+1}@railstutorial.org"
#  password = "password"
#  address = "Texas"
#  phone = "8880001111"
#  license = "12345678#{n}"
#  User.create!(name:  name,
#              email: email,
#              address: address,
#              phone: phone,
#              license: license,
#              password:              password,
#              password_confirmation: password)
#  end