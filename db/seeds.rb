# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Center.destroy_all
c1 = Center.create(name:"Adopt Me", location: "Manhattan")
c2 = Center.create(name:"Pets Friends", location: "Bronx")
c3 = Center.create(name:"I'm your new puppy", location: "Brooklyn")

User.destroy_all
u1 = User.create(name:"John Smith", age:20)
u2 = User.create(name:"Helen Walsh", age:25)
u3 = User.create(name:"Jimmy Kimmel", age:30)

Breeder.destroy_all
b1 = Breeder.create(name:"Adam Smith", rating:4)
b2 = Breeder.create(name:"Elton John", rating:5)
b3 = Breeder.create(name:"Peter Fanning", rating:3)

Pet.destroy_all
p1 = Pet.create(name:"Charley", age:1, breed:"bulldog", size:"medium", gender: "female", image:"https://d17fnq9dkz9hgj.cloudfront.net/breed-uploads/2018/08/english-bulldog-card-small.jpg?bust=1535568734", user:u1, center:c1, breeder:b1)
p2 = Pet.create(name:"Foxy", age:2, breed:"spaniel", size:"medium", gender: "male", image:"https://thehappypuppysite.com/wp-content/uploads/2019/04/The-English-Cocker-Spaniel-HP-long.jpg", user:u2, center:c2, breeder:b2)
p3 = Pet.create(name:"Roxy", age:2, breed:"terrier", size:"small", gender: "female", image:"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/29112347/Australian-Terrier-on-White-011.jpg", user:u3, center:c3, breeder:b3)