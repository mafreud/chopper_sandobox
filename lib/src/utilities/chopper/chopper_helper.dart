import 'package:chopper/chopper.dart';
import 'package:chopper_sandobox/src/features/beer/data/repository/client/beer_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/wine/data/repository/client/wine_client.dart';

part 'chopper_helper.g.dart';

@riverpod
class ChopperHelper extends _$ChopperHelper {
  @override
  void build() {}

  ChopperClient get client => ChopperClient(
        services: [
          BeerClient.create(),
          WineClient.create(),
        ],
      );
}
