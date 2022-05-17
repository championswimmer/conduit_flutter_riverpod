import 'package:conduit_flutter_riverpod/network/dtos/get_articles_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'conduit_rest_client.g.dart';

@RestApi(baseUrl: "https://api.realworld.io/api")
abstract class ConduitRESTClient {
  factory ConduitRESTClient(Dio dio, {String baseUrl}) = _ConduitRESTClient;

  @GET("/articles")
  Future<GetArticlesResponse> getArticles();
}
