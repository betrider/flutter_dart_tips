//You can use collection-if and spreads with lists, sets AND maps

void main() {
  const addRatings = true;
  const restaurant = {
    'name' : 'Pizza Mario',
    'cuisine': 'Italian',
    if (addRatings) ...{
      'avgRating': 4.3,
      'numRatings': 5,
    }
  };
  print(restaurant);
}
