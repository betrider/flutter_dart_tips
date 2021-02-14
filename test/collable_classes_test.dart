//Dart callable classes
class PasswordValidator {
  bool call(String password) {
    return password.length > 10;
  }
}

void main() {
  final validator = PasswordValidator();
  print(validator.call('test')); //false
  print(validator.call('test1234')); //false
  print(validator.call('not-so-frozen-arctic')); //true
}
