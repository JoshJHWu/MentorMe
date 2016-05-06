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

User.create(type:"Student",
            phase:1,
            email:'g@h.com',
            password:'123456',
            phone:'516-931-6336',
            first_name:'Ryan',
            last_name:'S')

10.times do |user|
User.create(type: ["Student", "Mentor"].sample,
            phase: [1,2,3].sample,
            email: Faker::Internet.email,
            password: Faker::Internet.password,
            phone: Faker::PhoneNumber.phone_number,
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name)
end

30.times do |appointment|
Appointment.create(
      start_datetime: DateTime.now + rand(5).days,
      duration: ["30","60"].sample,
      student_id: Student.all.sample,
      mentor_id: Mentor.all.sample
      )
end

# 40.times do |appointment_topics|
#       AppointmentTopics.create(
#             topic_id:Topic.all.sample,
#             appointment_id:Appointment.all.sample)
# end

# ["Algorithms","Javascript","Rails","CRUD","AJAX","Regex","MVC","Inheritance","Active Record","SQLite3","API/Parsing","EE"].sample(4)
 # Review.create(type:'ReviewOfStudent',
 #               rating:1,
 #               body:'Foo bar baz',
 #               user_id:1 )
