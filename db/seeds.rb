# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
  {
    email: "raica@raica.com",
    username: "raica",
    password: "chipchip1212",
    fullname: "Rai Ca",
    phone: "0123456789",
    jti: SecureRandom.uuid,
  },
  {
    email: "chipchip@raica.com",
    username: "chipchip",
    password: "chipchip1212",
    fullname: "Luon Chip Chip",
    phone: "0123456788",
    jti: SecureRandom.uuid,
  }
])
