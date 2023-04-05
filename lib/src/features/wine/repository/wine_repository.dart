import 'package:chopper_sandobox/src/features/wine/repository/client/wine_client.dart';
import 'package:chopper_sandobox/src/utilities/chopper/chopper_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wine_repository.g.dart';

@riverpod
class WineRepository extends _$WineRepository {
  @override
  void build() {}

  WineClient get client =>
      ref.read(chopperServiceProvider.notifier).client.getService<WineClient>();

  Future<dynamic> getRed() async {
    final response = await client.getRed();
    if (response.isSuccessful) {
      return response.body;
    } else {
      return response.error;
    }
  }
}
