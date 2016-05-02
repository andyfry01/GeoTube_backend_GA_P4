# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.create!({title: 'Test video', description: 'This is a video for testing', thumbnail: 'https://i.ytimg.com/vi/4ua64HbsBUo/hqdefault.jpg', link: '4ua64HbsBUo', date: '2014-05-21T12:00:46.000Z', live: false})
