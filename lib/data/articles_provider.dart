import 'package:conduit_flutter_riverpod/network/conduit_rest_client.dart';
import 'package:conduit_flutter_riverpod/network/dtos/get_articles_response.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

// TODO: make this family to handle query params
final articlesProvider = FutureProvider.autoDispose<GetArticlesResponse>((ref) async {
  final cancelToken = CancelToken();
  // TODO: create a provider for client
  final dio = Dio();
  final client = ConduitRESTClient(dio);
  dio.interceptors.add(LogInterceptor());

  ref.onDispose(() => cancelToken.cancel());

  final response = await client.getArticles(cancelToken);

  return response;
});
