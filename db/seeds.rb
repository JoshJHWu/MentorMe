User.destroy_all
Review.destroy_all
Topic.destroy_all

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

#creating dummy users
User.create(type:"Mentor",
            phase:3,
            email:'a@b.com',
            password:'123456',
            phone:'123-456-7890',
            first_name:'Noah',
            last_name:'S')

User.create(type:"Student",
            phase:2,
            email:'c@d.com',
            password:'123456',
            phone:'903-319-1789',
            first_name:'Saralis',
            last_name:'Rivera')

User.create(type:"Mentor",
            phase:3,
            email:'e@f.com',
            password:'123456',
            phone:'561-235-1606',
            first_name:'Kevin',
            last_name:'Perkins')

User.create(type:"Student",
            phase:1,
            email:'g@h.com',
            password:'123456',
            phone:'516-931-6336',
            first_name:'Ryan',
            last_name:'S')

 # Review.create(type:'ReviewOfStudent',
 #               rating:1,
 #               body:'Foo bar baz',
 #               user_id:1 )
