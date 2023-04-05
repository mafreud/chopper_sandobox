import 'package:chopper_sandobox/src/utilities/chopper/chopper_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'client/beer_client.dart';

part 'beer_repository.g.dart';

@riverpod
class BeerRepository extends _$BeerRepository {
  @override
  void build() {}

  BeerClient get client =>
      ref.read(chopperServiceProvider.notifier).client.getService<BeerClient>();

  Future<dynamic> getAle() async {
    final response = await client.getAle();
    if (response.isSuccessful) {
      return response.body;
    } else {
      return response.error;
    }
  }
}
