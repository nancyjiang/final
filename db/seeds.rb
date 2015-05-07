Users.delete_all
Photos.delete_all
Hashtags.delete_all
Photo_Hashtag.delete_all
Likes.delete_all


#Create the users
nancy = Users.create(name: "nancy", email: "njiang2015@kellogg.northwestern.com", location: "Evanston") 
brian = Users.create(name: "brian", email: "b-eng@kellogg.northwestern.edu", location: "Chicago")
dan = Users.create(name: "dan", email: "dmtsui@gmail.com", location: "San Francisco")
sara = Users.create(name: "sara", email: "ms.sara.lu@gmail.com", location: "San Francisco")
tiff = Users.create(name: "tiff", email: "tlung2015@kellogg.northwestern.edu", location: "Evanston")
tommy = Users.create(name: "tommy", email: "tkantapasara2015@kellogg.northwestern.edu", location: "Evanston")
preeza = Users.create(name: "preeza", email: "pshrestha2015@kellogg.northwestern.edu", location: "Evanston")

#Create the photos
nancyphoto = Photos.create(user_id: nancy.id, uploaded_at: DateTime.now) 
saraphoto = Photos.create(user_id: sara.id, uploaded_at: DateTime.now) 
tiffphoto = Photos.create(user_id: tiff.id, uploaded_at: DateTime.now}, 
preezaphoto = Photos.create(user_id: preeza.id, uploaded_at: DateTime.now},
tommyphoto = Photos.create(user_id: tommy.id, uploaded_at: DateTime.now}])

#Create the hashtags
sparkly = Hashtags.create(name: "sparkly")
outfit = Hashtags.create(name: "outfit")
trendy = Hashtags.create(name: "trendy")
monochrome = Hashtags.create(name: "monochrome")
vintage = Hashtags.create(name: "vintage")
accessories = Hashtags.create(name: "accessories")
heels = Hashtags.create(name: "heels")
streetstyle = Hashtags.create(name: "streetstyle")

#Create the photo hashtags for Nancy's photos
Photo_Hashtag.create(photo_id: nancyphoto.id, hashtag_id: outfit.id)
Photo_Hashtag.create(photo_id: nancyphoto.id, hashtag_id: monochrome.id)

#Create the photo hashtags for Sara's photos
Photo_Hashtag.create(photo_id: saraphoto.id, hashtag_id: sparkly.id)
Photo_Hashtag.create(photo_id: saraphoto.id, hashtag_id: accessories.id)

#Create the photo hashtags for Tiff's photos
Photo_Hashtag.create(photo_id: tiffphoto.id, hashtag_id: outfit.id) 
Photo_Hashtag.create(photo_id: tiffphoto.id, hashtag_id: vintage.id) 

#Create the photo hashtags for Preeza's photos
Photo_Hashtag.create(photo_id: preezaphoto.id, hashtag_id: trendy.id) 
Photo_Hashtag.create(photo_id: preezaphoto.id, hashtag_id: heels.id)

#Create the photo hashtags for Tommy's photos
Photo_Hashtag.create(photo_id: tommyphoto.id, hashtag_id: trendy.id)
Photo_Hashtag.create(photo_id: tommyphoto.id, hashtag_id: streetstyle.id)

#Create the likes 
like = Likes.create([{photo_id: nancyphoto.id, user_id: sara.id},
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
