import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../utilities/chopper/chopper_helper.dart';
import 'client/wine_client.dart';

part 'wine_repository.g.dart';

@riverpod
class WineRepository extends _$WineRepository {
  @override
  void build() {}

  WineClient get client =>
      ref.read(chopperHelperProvider.notifier).client.getService<WineClient>();

  Future<dynamic> getRed() async {
    final response = await client.getRed();
    if (response.isSuccessful) {
      return response.body;
    } else {
      return response.error;
    }
  }
}
