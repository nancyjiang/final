
user = User.create([{username: "nancy", email: "njiang2015@kellogg.northwestern.com", location: "Evanston"}, 
					{username: "brian", email: "b-eng@kellogg.northwestern.edu", location: "Chicago"}, 
					{username: "dan", email: "dmtsui@gmail.com", location: "San Francisco"}, 
					{username: "sara", email: "ms.sara.lu@gmail.com", location: "San Francisco"}, 
					{username: "tiff", email: "tlung2015@kellogg.northwestern.edu", location: "Evanston"},
					{username: "tommy", email: "tkantapasara2015@kellogg.northwestern.edu", location: "Evanston"}, 
					{username: "preeza", email: "pshrestha2015@kellogg.northwestern.edu", location: "Evanston"}])

photo = Photo.create([{user_id: 1, uploaded_at: DateTime.now}, 
					  {user_id: 4, uploaded_at: DateTime.now}, 
					  {user_id: 5, uploaded_at: DateTime.now}, 
					  {user_id: 7, uploaded_at: DateTime.now},
					  {user_id: 1, uploaded_at: DateTime.now}, 
					  {user_id: 6, uploaded_at: DateTime.now}])

hashtag = Hashtag.create([{hashtag_name: "sparkly"}, 
						  {hashtag_name: "outfit"}, 
						  {hashtag_name: "trendy"},
						  {hashtag_name: "monochrome"}, 
						  {hashtag_name: "vintage"}, 
						  {hasthag_name: "accessories"}, 
						  {hashtag_name: "heels"}, 
						  {hashtag_name: "streetstyle"}])

photo_hashtag = Photo_Hashtag.create([{photo_id: 1, hashtag_id: 2}, 
									  {photo_id: 1, hashtag_id: 4},
									  {photo_id: 2, hashtag_id: 1},
									  {photo_id: 2, hashtag_id: 6},
									  {photo_id: 3, hashtag_id: 2}, 
									  {photo_id: 3, hashtag_id: 5}, 
									  {photo_id: 4, hashtag_id: 3}, 
									  {photo_id: 4, hashtag_id: 7},
									  {photo_id: 5, hashtag_id: 3},
									  {photo_id: 5, hashtag_id: 8},
									  {photo_id: 6, hashtag_id: 3},
									  {photo_id: 6, hashtag_id: 8}])

like = Like.create([{photo_id: 1, user_id: 4},
					{photo_id: 1, user_id: 7}, 
					{photo_id: 2, user_id: 1},
					{photo_id: 2, user_id: 6},
					{photo_id: 3, user_id: 7},
					{photo_id: 3, user_id: 3},
					{photo_id: 4, user_id: 5},
					{photo_id: 4, user_id: 1},
					{photo_id: 5, user_id: 6},
					{photo_id: 6, user_id: 5},
					{photo_id: 6, user_id: 3}])

followe_followee = Follower_Followee.create([{follower_id: 4, followee_id: 1},
											 {follower_id: 5, followee_id: 1},
											 {follower_id: 7, followee_id: 1},
											 {follower_id: 6, followee_id: 1},
											 {follower_id: 2, followee_id: 1},
											 {follower_id: 3, followee_id: 1},
											 {follower_id: 1, followee_id: 2},
											 {follower_id: 1, followee_id: 3},
											 {follower_id: 4, followee_id: 3},
											 {follower_id: 1, followee_id: 4},
											 {follower_id: 3, followee_id: 4},
											 {follower_id: 1, followee_id: 5},
											 {follower_id: 7, followee_id: 5},
											 {follower_id: 6, followee_id: 5},
											 {follower_id: 1, followee_id: 7},
											 {follower_id: 5, followee_id: 7},
											 {follower_id: 6, followee_id: 7},
											 {follower_id: 1, followee_id: 6},
											 {follower_id: 3, followee_id: 6},
											 {follower_id: 7, followee_id: 6},
											 {follower_id: 5, followee_id: 6}])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
