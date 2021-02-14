void main() {
  List citiesList = ['11', '22', '33', '11'];
  for (var item in citiesList) {
    print('List item: $item');
  }

  Set citiesSet = {'11', '22', '33'};
  Set citiesSet2 = {'33', '44', '55'};

  print(citiesSet.union(citiesSet2)); //{11, 22, 33, 44, 55}
  print(citiesSet.difference(citiesSet2)); //{11, 22}
  print(citiesSet.intersection(citiesSet2)); //{33}
}
