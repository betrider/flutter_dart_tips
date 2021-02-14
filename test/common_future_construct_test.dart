Future<void> main() async {
  print('start');
  print(await Future.delayed(Duration(seconds: 2), () => 'Latte'));
  print(await Future.value('Cappuccino'));
  print(Future.error(Exception('Out of milk')));
  print('end');
}
