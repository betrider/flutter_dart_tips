class Temperature {
  double celsius;

  //Use named constructors and initializer lists for more ergonomic APIs
  Temperature.celsius(this.celsius);
  Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;

  //getters and settes
  double get farenheit => celsius * 1.8 / 32;
  set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;
}

void main() {
  final temp1 = Temperature.celsius(30);
  final temp2 = Temperature.farenheit(90);
  print(temp1.farenheit);
  print(temp2.farenheit);
}
