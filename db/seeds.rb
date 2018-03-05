User.destroy_all
puts "start of users  seed"
jane = User.create!(email: "jane@gmail.com", password: "aaaaaa",
  username: "jane", firstname: "Jane", lastname: "Varti")
adrien = User.create!(email: "adrien@gmail.com", password: "aaaaaa",
  username: "adrien", firstname: "Adrien", lastname: "Random")
david = User.create!(email: "david@gmail.com", password: "aaaaaa",
  username: "david", firstname: "David", lastname: "Jon")
print "users: "
p User.all
puts "End of users seed"

Drug.destroy_all
puts "start of drug  seed"
aspirine = Drug.create!(name: "aspirine", description: "Maux de tête, fièvre", posology: "3 max par jour")
doliprane = Drug.create!(name: "doliprane", description: "Maux de tête, douleurs", posology: "4 max par jour")
efferalgan = Drug.create!(name: "efferalgan", description: "Fièvres", posology: "5 par jour max")
advil = Drug.create!(name: "advil", description: "Migraine", posology: "2 par jour")
aspegic = Drug.create!(name: "aspegic", description: "Etats fébriles", posology: "3 par jour max")
print "drugs : "
p Drug.all
puts "End of drug  seed"

# Favorite.destroy_all
# puts "start of favorite seed"
# favorite1 = Favorite.create!(user: jane, drug: aspirine, favored_at: "Barras")
# favorite2 = Favorite.create!(user: jane, drug: doliprane, favored_at: "Barras")
# favorite3 = Favorite.create!(user: david, drug: efferalgan, favored_at: "Barras")
# favorite4 = Favorite.create!(user: david, drug: advil, favored_at: "Barras")
# favorite5 = Favorite.create!(user: adrien, drug: aspegic, favored_at: "Barras")
# favorite6 = Favorite.create!(user: adrien, drug: doliprane, favored_at: "Barras")
# print "favorites: "
# p Favorite.all
# puts "End of favorite seed"

# Review.destroy_all
# puts "start of Review seed"
# review = Review.create!(user: jane, drug: aspirine, date: "Barras", description: "")
# review = Review.create!(user: jane, drug: aspirine, date: "Barras", description: "")
# review = Place.create!(user: jane, drug: aspirine, date: "Barras", description: "")
# print "Reviews: "
# p Review.all
# puts "End of Review seed"




