
User.destroy_all
u1 = User.create!(name:"John Smith", age:20 , password_digest:"123")
u2 = User.create!(name:"Helen Walsh", age:25, password_digest:"456")
u3 = User.create!(name:"Jimmy Kimmel", age:30, password_digest:"789")

Breeder.destroy_all
b1 = Breeder.create!(name:"Adam Smith", rating:4, password_digest: "123")
b2 = Breeder.create!(name:"Elton John", rating:5, password_digest: "456")
b3 = Breeder.create!(name:"Peter Fanning", rating:3, password_digest: "789")

Pet.destroy_all
p1 = Pet.create!(name:"Charley", age:1, breed:"bulldog", size:"medium", gender: "female", image:"https://d17fnq9dkz9hgj.cloudfront.net/breed-uploads/2018/08/english-bulldog-card-small.jpg?bust=1535568734", breeder:b1)
p2 = Pet.create!(name:"Foxy", age:2, breed:"spaniel", size:"medium", gender: "male", image:"https://thehappypuppysite.com/wp-content/uploads/2019/04/The-English-Cocker-Spaniel-HP-long.jpg", breeder:b2)
p3 = Pet.create!(name:"Roxy", age:2, breed:"terrier", size:"small", gender: "female", image:"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/29112347/Australian-Terrier-on-White-011.jpg", breeder:b3)