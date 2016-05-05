# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(type:"Mentor", phase:1, email:'a@b.com', password:'123456',phone:'7038685306',first_name:'j',last_name:'a')

 Review.create(type:'ReviewOfStudent', rating:1, body:'Foo bar baz', user_id:1 )



test.strftime(format='%A %B %d %Y at %I:%M%p')
