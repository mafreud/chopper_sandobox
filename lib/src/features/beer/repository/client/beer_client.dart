import 'package:chopper/chopper.dart';

part 'beer_client.chopper.dart';

@ChopperApi(baseUrl: "https://api.sampleapis.com/beers/")
abstract class BeerClient extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static BeerClient create([ChopperClient? client]) => _$BeerClient(client);

  @Get(path: "ale")
  Future<Response> getAle();
}
