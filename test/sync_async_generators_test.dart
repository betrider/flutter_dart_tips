Iterable<int> count(int n) sync* {
  for (var i = 0; i < n; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
    print(sum);
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (var i = 0; i < to; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  //Iterable
  print(count(10));

  //Stream
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print('finish : $sum');
}
