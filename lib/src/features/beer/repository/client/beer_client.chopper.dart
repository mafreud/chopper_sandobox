// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$BeerClient extends BeerClient {
  _$BeerClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = BeerClient;

  @override
  Future<Response<dynamic>> getAle() {
    final Uri $url = Uri.parse('https://api.sampleapis.com/beers/ale');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
