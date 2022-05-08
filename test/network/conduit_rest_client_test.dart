import 'package:conduit_flutter_riverpod/network/conduit_rest_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('rest client can be constructed', () {
    final client = ConduitRESTClient(Dio());
  });
}
