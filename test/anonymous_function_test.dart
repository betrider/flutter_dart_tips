//Using anonymous functions and functions as arguments
void main() {
  final sayHi = (name) => 'Hi, $name';
  welcome(sayHi, 'Andrea');

  const values = [1, 2, 3];
  print(values.map((value) => value*value).toList());
  print(values.map((value) => square(value)).toList());
  print(values.map(square).toList());
}

void welcome(
  String Function(String) greet,
  String name,
) {
  print(greet(name));
  print('Welcome to this course');
}

int square(int value) {
  return value * value;
}
