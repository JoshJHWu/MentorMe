# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Review.destroy_all
Topic.destroy_all

User.create(type:"Mentor", phase:1, email:'a@b.com', password:'123456',phone:'7038685306',first_name:'Sandy',last_name:'Smith')
User.create(type: "Student", phase:3, email:'a@c.com', password:'123456', phone:'123123456',first_name:'Gary',last_name:'Bjorn')

 Review.create(type:'ReviewOfStudent', rating:1, body:'Foo bar baz', user_id:1 )

# test.strftime(format='%A %B %d %Y at %I:%M%p')

#creating topics

Topic.create(name: "Algorithms")
Topic.create(name: "Javascript")
Topic.create(name: "Rails")
Topic.create(name: "CRUD")
Topic.create(name: "AJAX")
Topic.create(name: "Regex")
Topic.create(name: "MVC")
Topic.create(name: "Inheritance")
Topic.create(name: "Active Record")
Topic.create(name: "SQLite3")
Topic.create(name: "API/Parsing")
Topic.create(name: "EE")
