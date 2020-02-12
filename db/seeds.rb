
# require 'faker' 


User.destroy_all
u1 = User.create!(name:"John Smith", age:20 , password:"123")
u2 = User.create!(name:"Helen Walsh", age:25, password:"456")
u3 = User.create!(name:"Jimmy Kimmel", age:30, password:"789")

Breeder.destroy_all
b1 = Breeder.create!(name:"Adam Smith", rating:4, password: "123")
b2 = Breeder.create!(name:"Elton John", rating:5, password: "456")
b3 = Breeder.create!(name:"Peter Fanning", rating:3, password: "789")

Pet.destroy_all

Pet.create!(name:"Charley", age:1, breed:"bulldog", size:"medium", gender: "female", image:"https://d17fnq9dkz9hgj.cloudfront.net/breed-uploads/2018/08/english-bulldog-card-small.jpg?bust=1535568734", breeder:b1)
Pet.create!(name:"Foxy", age:2, breed:"spaniel", size:"medium", gender: "male", image:"https://thehappypuppysite.com/wp-content/uploads/2019/04/The-English-Cocker-Spaniel-HP-long.jpg", breeder:b2)
Pet.create!(name:"Roxy", age:2, breed:"terrier", size:"small", gender: "female", image:"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/29112347/Australian-Terrier-on-White-011.jpg", breeder:b3)
Pet.create!(name:"Charley-junior", age:1, breed:"bulldog", size:"medium", gender: "female", image:"https://d17fnq9dkz9hgj.cloudfront.net/breed-uploads/2018/08/english-bulldog-card-small.jpg?bust=1535568734", breeder:b1)
Pet.create!(name:"Foxy-junior", age:1, breed:"spaniel", size:"medium", gender: "female", image:"https://thehappypuppysite.com/wp-content/uploads/2019/04/The-English-Cocker-Spaniel-HP-long.jpg", breeder:b2)
Pet.create!(name:"Roxy-junior", age:1, breed:"terrier", size:"small", gender: "male", image:"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/29112347/Australian-Terrier-on-White-011.jpg", breeder:b1)
Pet.create!(name:"Max", age:1, breed:"Labrador", size:"big", gender: "male", image:"https://i.pinimg.com/originals/99/f9/ed/99f9ede31328c8484e9e252d08811535.jpg" , breeder:b2)
Pet.create!(name:"Cooper", age:3, breed:"Labrador", size:"big", gender: "male", image:"https://www.bemurrah.com.au/dowlfalls/wp-content/uploads/2018/07/Dixie-1024x683.jpg", breeder:b3)
Pet.create!(name:"Sadie", age:3, breed:"Labrador", size:"big", gender: "male", image:"https://www.bemurrah.com.au/dowlfalls/wp-content/uploads/2018/07/Dixie-1024x683.jpg", breeder:b1)
Pet.create!(name:"Buddy", age:4, breed:"Labrador", size:"big", gender: "male", image:"https://www.thesprucepets.com/thmb/L3VrGl7-HG-3DZtLzJH8RkSbH68=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/Labrador-GettyImages-932183150-32908e0b3c3a4b529f5e3a27c1ca2b0b.jpg", breeder:b2)
Pet.create!(name:"Bailey", age:5, breed:"Labrador", size:"big", gender: "male", image:"https://images.squarespace-cdn.com/content/v1/573b62e9746fb941c1458dcd/1488920359711-FA54MU3B4E561IAKQ21M/ke17ZwdGBToddI8pDm48kKA0EwFM0485A9CvJFJoL6RZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIZHKgKHXs8YJd3sLBlFjvk7acJVZsuJx6Jo26Pki1eL8KMshLAGzx4R3EDFOm1kBS/who-we-are.jpg", breeder:b3)
Pet.create!(name:"Lucy", age:5, breed:"Labrador", size:"big", gender: "female", image:"https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/Labrador-Retriever.jpg", breeder:b1)
Pet.create!(name:"Luna", age:6, breed:"Labrador", size:"big", gender: "female", image:"https://www.allthingsdogs.com/wp-content/uploads/2019/11/Labrador-Names-Feature.jpg", breeder:b2)
Pet.create!(name:"Molly", age:7, breed:"Labrador", size:"big", gender: "female", image:"https://www.dogster.com/wp-content/uploads/2019/01/Yellow-Labrador-Retriever-happy-in-grass-.jpg", breeder:b3)
Pet.create!(name:"Stella", age:2, breed:"Labrador", size:"big", gender: "female", image:"https://www.dfwlabrescue.org/images/uploads/19%20Tigger%20intake2r.jpg", breeder:b3)
Pet.create!(name:"Nala", age:2, breed:"Labrador", size:"big", gender: "female", image:"https://cdn.orvis.com/images/DBS_Lab_1280.jpg", breeder:b3)
Pet.create!(name:"Cosmo", age:2, breed:"German Shepherd", size:"big", gender: "male", image:"https://upload.wikimedia.org/wikipedia/commons/0/00/1._DSC_0346_%2810096362833%29.jpg", breeder:b1)
Pet.create!(name:"Curly", age:2, breed:"German Shepherd", size:"big", gender: "male", image:"https://pbs.twimg.com/media/EFP5t-pXkAAITP4.jpg", breeder:b2)
Pet.create!(name:"Dante", age:2, breed:"German Shepherd", size:"big", gender: "male", image:"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12213218/German-Shepherd-on-White-00.jpg", breeder:b3)
Pet.create!(name:"Dino", age:3, breed:"German Shepherd", size:"big", gender: "male", image:"https://vetstreet.brightspotcdn.com/dims4/default/1020ad3/2147483647/crop/696x410%2B0%2B29/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fc6%2Fd9%2F5a1117354115962444019a2a10c1%2Fgerman-shepherd-ap-lkwegz.jpg", breeder:b1)
Pet.create!(name:"Draco", age:3, breed:"German Shepherd", size:"big", gender: "male", image:"https://cff2.earth.com/uploads/2017/07/27130846/German-Shepherd-study-reveals-health-consequences-of-breeding.jpg", breeder:b2)
Pet.create!(name:"Falcon", age:3, breed:"German Shepherd", size:"big", gender: "male", image:"https://thehappypuppysite.com/wp-content/uploads/2019/05/X-German-Shepherd-Dog-Facts-long.jpg", breeder:b3)
Pet.create!(name:"Aloha", age:4, breed:"German Shepherd", size:"big", gender: "male", image:"https://scx1.b-cdn.net/csz/news/800/2016/earlyneuteri.jpg", breeder:b1)
Pet.create!(name:"Ambrosia", age:4, breed:"German Shepherd", size:"big", gender: "female", image:"https://www.dogster.com/wp-content/uploads/2018/12/german-shepard-dog-face.jpg", breeder:b2)
Pet.create!(name:"Calamity", age:4, breed:"German Shepherd", size:"big", gender: "female", image:"https://vetstreet.brightspotcdn.com/dims4/default/1d87d20/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F3a%2Fc3%2F424ee1bf4768973966bde73acda8%2Fgerman-shepherd-AP-1S7FRX-645sm12913.jpg", breeder:b3)
Pet.create!(name:"Annabelle", age:4, breed:"German Shepherd", size:"big", gender: "female", image:"https://germanshepherdcountry.com/wp-content/uploads/2016/10/GSD-Standing-GSC-600x425.jpg", breeder:b1)
Pet.create!(name:"Jax", age:1, breed:"Beagle", size:"medium", gender: "male", image:"https://www.thesprucepets.com/thmb/WxVsARRPU_8Wx8iS3iqDxP3_iK4=/3881x2911/smart/filters:no_upscale()/beagle-RolfKopfle-Photolibrary-Getty-135631212-56a26b1d3df78cf772756667.jpg", breeder:b1)
Pet.create!(name:"Levi", age:1, breed:"Beagle", size:"medium", gender: "male", image:"https://previews.123rf.com/images/daseaford/daseaford1610/daseaford161000039/65029511-the-beautiful-face-of-a-beagle-hunting-hound-dog-.jpg", breeder:b3)
Pet.create!(name:"Major", age:1, breed:"Beagle", size:"medium", gender: "male", image:"https://previews.123rf.com/images/mybaitshop/mybaitshop1004/mybaitshop100400024/6761562-a-hunting-beagle-posing-in-the-middle-of-a-woods-on-a-log-.jpg", breeder:b2)
Pet.create!(name:"Marmaduke", age:1, breed:"Beagle", size:"medium", gender: "male", image:"https://nyc3.digitaloceanspaces.com/cwhdrmteam/wp-content/uploads/2019/10/07104333/GettyImages-1064619358-1170x680.jpg", breeder:b3)
Pet.create!(name:"Barbie", age:3, breed:"Beagle", size:"medium", gender: "female", image:"https://www.fieldandstream.com/resizer/MRRoRCPmHHJbkLxF9mqIDpC_r2o=/760x506/arc-anglerfish-arc2-prod-bonnier.s3.amazonaws.com/public/P2ZPTJ4QLLCAFC45LLF4Q636MQ.jpg", breeder:b3)
Pet.create!(name:"Blossom", age:3, breed:"Beagle", size:"medium", gender: "female", image:"https://previews.123rf.com/images/olgacov/olgacov1210/olgacov121000024/15793771-dog-beagle-breed-sitting-on-the-green-grass-in-the-summer-shallow-depth-of-field.jpg", breeder:b2)
Pet.create!(name:"Calamity", age:3, breed:"Beagle", size:"medium", gender: "female", image:"https://images.fineartamerica.com/images-medium-large-5/1-beagle-being-walked-off-a-lead-in-the-field-m-s.jpg", breeder:b1)
Pet.create!(name:"Chloe", age:2, breed:"Beagle", size:"medium", gender: "female", image:"https://resize.prod.docfr.doc-media.fr/r/720,480,center-middle,ffffff,smartcrop/img/var/doctissimo/storage/images/fr/www/animaux/chien/races-chien/beagle/803943-3-fre-FR/beagle.jpg", breeder:b3)
Pet.create!(name:"Clarabelle", age:2, breed:"Beagle", size:"medium", gender: "female", image:"https://www.rover.com/blog/wp-content/uploads/2016/04/beagle-960x540.jpg", breeder:b2)
Pet.create!(name:"Clementine", age:2, breed:"Beagle", size:"medium", gender: "female", image:"https://d17fnq9dkz9hgj.cloudfront.net/breed-uploads/2018/08/beagle-detail.jpg?bust=1535565158&width=355", breeder:b3)
# Pet.create!(name:"", age:4, breed:"Poodle", size:"", gender: "", image:"", breeder:b3)
# p6 = Pet.create!(name:"", age:4, breed:"Boxer", size:"", gender: "", image:"", breeder:b3)

# p6 = Pet.create!(name:"", age:, breed:"Doberman", size:"", gender: "", image:"", breeder:b3)


# Ariel
# Aster
# Countess
# Daffodil
# Dancer
# Dixie
# Dora
# Duchess
# Empress
# Felicity
# Fern
# Flicka
# Flower


# Maverick
# Mister
# Murdoch
# Neo
# Oscar
# Otis
# Pal
# Phoenix


