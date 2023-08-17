# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

used_usernames = Set.new

5.times do
  username = Faker::Internet.unique.username # Corregido aquí
  # Verificar si el nombre de usuario ya está en uso
  while used_usernames.include?(username)
    username = Faker::Internet.unique.username # Corregido aquí
  end

  used_usernames.add(username)

  Tweet.create(
    description: Faker::Lorem.sentence,
    username: username
  )
end
