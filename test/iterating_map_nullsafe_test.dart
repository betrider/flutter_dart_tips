//Iterating through a map in a null-safe manner?

void main() {
  Map timespent = <String, double>{
    'Blogging': 10.5,
    'Youtube': 30.5,
    'Courses': 75.2
  };
  for (var entry in timespent.entries) {
    print('${entry.key}: ${entry.value}');
  }
  for (var key in timespent.keys) {
    print('key: $key');
  }
  for (var value in timespent.values) {
    print('value: $value');
  }
}
