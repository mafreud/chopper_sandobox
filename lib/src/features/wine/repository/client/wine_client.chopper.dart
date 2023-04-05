// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wine_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WineClient extends WineClient {
  _$WineClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WineClient;

  @override
  Future<Response<dynamic>> getRed() {
    final Uri $url = Uri.parse('https://api.sampleapis.com/wines/red');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
