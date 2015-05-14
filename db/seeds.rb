User.delete_all
Photo.delete_all
Hashtag.delete_all
HashtagPhoto.delete_all
Like.delete_all


#Create the users
nancy = User.create(name: "nancy", email: "njiang2015@kellogg.northwestern.com", location: "Evanston") 
brian = User.create(name: "brian", email: "b-eng@kellogg.northwestern.edu", location: "Chicago")
dan = User.create(name: "dan", email: "dmtsui@gmail.com", location: "San Francisco")
sara = User.create(name: "sara", email: "ms.sara.lu@gmail.com", location: "San Francisco")
tiff = User.create(name: "tiff", email: "tlung2015@kellogg.northwestern.edu", location: "Evanston")
tommy = User.create(name: "tommy", email: "tkantapasara2015@kellogg.northwestern.edu", location: "Evanston")
preeza = User.create(name: "preeza", email: "pshrestha2015@kellogg.northwestern.edu", location: "Evanston")

#Create the photos
nancyphoto = Photo.create(user_id: nancy.id, uploaded_at: DateTime.now) 
saraphoto = Photo.create(user_id: sara.id, uploaded_at: DateTime.now) 
tiffphoto = Photo.create(user_id: tiff.id, uploaded_at: DateTime.now)
preezaphoto = Photo.create(user_id: preeza.id, uploaded_at: DateTime.now)
tommyphoto = Photo.create(user_id: tommy.id, uploaded_at: DateTime.now)

#Create the hashtags
sparkly = Hashtag.create(name: "sparkly")
outfit = Hashtag.create(name: "outfit")
trendy = Hashtag.create(name: "trendy")
monochrome = Hashtag.create(name: "monochrome")
vintage = Hashtag.create(name: "vintage")
accessories = Hashtag.create(name: "accessories")
heels = Hashtag.create(name: "heels")
streetstyle = Hashtag.create(name: "streetstyle")

#Create the photo hashtags for Nancy's photos
HashtagPhoto.create(photo_id: nancyphoto.id, hashtag_id: outfit.id)
HashtagPhoto.create(photo_id: nancyphoto.id, hashtag_id: monochrome.id)

#Create the photo hashtags for Sara's photos
HashtagPhoto.create(photo_id: saraphoto.id, hashtag_id: sparkly.id)
HashtagPhoto.create(photo_id: saraphoto.id, hashtag_id: accessories.id)

#Create the photo hashtags for Tiff's photos
HashtagPhoto.create(photo_id: tiffphoto.id, hashtag_id: outfit.id) 
HashtagPhoto.create(photo_id: tiffphoto.id, hashtag_id: vintage.id) 

#Create the photo hashtags for Preeza's photos
HashtagPhoto.create(photo_id: preezaphoto.id, hashtag_id: trendy.id) 
HashtagPhoto.create(photo_id: preezaphoto.id, hashtag_id: heels.id)

#Create the photo hashtags for Tommy's photos
HashtagPhoto.create(photo_id: tommyphoto.id, hashtag_id: trendy.id)
HashtagPhoto.create(photo_id: tommyphoto.id, hashtag_id: streetstyle.id)

#Create the likes 
like = Like.create([{photo_id: nancyphoto.id, user_id: sara.id},
					{photo_id: nancyphoto.id, user_id: preeza.id}, 
					{photo_id: saraphoto.id, user_id: nancy.id},
					{photo_id: saraphoto.id, user_id: dan.id},
					{photo_id: tiffphoto.id, user_id: preeza.id},
					{photo_id: tiffphoto.id, user_id: tommy.id},
					{photo_id: preezaphoto.id, user_id: tiff.id},
					{photo_id: preezaphoto.id, user_id: nancy.id},
					{photo_id: tommyphoto.id, user_id: tiff.id},
					{photo_id: tommyphoto.id, user_id: dan.id}])


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
