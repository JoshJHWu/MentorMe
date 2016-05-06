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
            phone:'123-456-7890',
            first_name:'Saralis',
            last_name:'Rivera')

User.create(type:"Mentor",
            phase:3,
            email:'a@b.com',
            password:'123456',
            phone:'123-456-7890',
            first_name:'Kevin',
            last_name:'Perkins')

User.create(type:"Student",
            phase:1,
            email:'a@b.com',
            password:'123456',
            phone:'123-456-7890',
            first_name:'Ryan',
            last_name:'Schutte')

 Review.create(type:'ReviewOfStudent',
               rating:1,
               body:'Foo bar baz',
               user_id:1 )



# test.strftime(format='%A %B %d %Y at %I:%M%p')
