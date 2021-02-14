//Use Future.wait to Execute multiple Futures concurrently

/// Mock API class
class CovidAPI {
  Future<int> getClass() => Future.value(1000);
  Future<int> getRecovered() => Future.value(100);
  Future<int> getDeaths() => Future.value(10);
}

void main() async {
  final api = CovidAPI();
  final values = await Future.wait([
    api.getClass(),
    api.getRecovered(),
    api.getDeaths(),
  ]);
  print(values);
}
