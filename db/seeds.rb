# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Artist.destroy_all
Song.destroy_all

10.times do
  Artist.create(name: Faker::Music::RockBand.name)
end

20.times do
  Song.create(title: Faker::Music.album, artist_id: Artist.all.sample.id)
end
