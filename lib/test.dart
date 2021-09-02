import 'package:test_rns/models/BreweryModel.dart';

class MockAPI {
  @override
  Future<List<BreweryModel>> getList() {
    return Future.value([
      BreweryModel(id: 1, name: "Murree"),
      BreweryModel(
        id: 2,
        name: "Pro",
      ),
    ]);
  }
}
