import 'package:chopper/chopper.dart';

part 'wine_client.chopper.dart';

@ChopperApi(baseUrl: "https://api.sampleapis.com/wines/")
abstract class WineClient extends ChopperService {
  static WineClient create([ChopperClient? client]) => _$WineClient(client);

  @Get(path: "red")
  Future<Response> getRed();
}
