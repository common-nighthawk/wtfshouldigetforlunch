map = Company.create(name: 'MAP Digital')

daniel = User.create(name: 'Daniel Deutsch', company: map)
tim = User.create(name: 'Tim Lawrenz', company: map)

pizza = Cuisine.create(name: 'Pizza')
italian = Cuisine.create(name: 'Italian')
chinese = Cuisine.create(name: 'Chinese')

d1 = PriceRange.create(dollar_signs: 1)
d2 = PriceRange.create(dollar_signs: 2)
d3 = PriceRange.create(dollar_signs: 3)
d4 = PriceRange.create(dollar_signs: 4)

pizza_place = Eatery.create(name: 'La Margarita', company: map, yelp_url: 'http://www.yelp.com/biz/la-margarita-new-york-2', lat: 40.721062, lng: -73.988086, price_range: d1)
vanessas = Eatery.create(name: "Vanessa's Dumpling House", company: map, yelp_url: 'http://www.yelp.com/biz/vanessas-dumpling-house-new-york-2', price_range: d1)

EateryCuisine.create(eatery: pizza_place, cuisine: pizza)
EateryCuisine.create(eatery: pizza_place, cuisine: italian)
EateryCuisine.create(eatery: vanessas, cuisine: chinese)

Review.create(eatery: pizza_place, user: daniel, text: 'Good pizza here.', stars: 5)
Review.create(eatery: pizza_place, user: tim, text: 'I like pizza.', stars: 4)
Review.create(eatery: vanessas, user: daniel, text: 'Good dumplings here.', stars: 3)
Review.create(eatery: vanessas, user: tim, text: 'I like dumplings.', stars: 2)
