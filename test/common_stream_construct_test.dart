Future<void> main() async {
  print('start');
  Stream.fromIterable([1, 2, 3]);
  Stream.value(10);
  Stream.empty();
  Stream.error(Exception('something went wrong'));
  Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42));
  Stream.periodic(Duration(seconds: 1), (index) => index);
  print('end');
}
