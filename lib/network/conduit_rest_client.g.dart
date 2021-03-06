// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conduit_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ConduitRESTClient implements ConduitRESTClient {
  _ConduitRESTClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.realworld.io/api';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GetArticlesResponse> getArticles([cancelToken]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetArticlesResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/articles',
                    queryParameters: queryParameters,
                    data: _data,
                    cancelToken: cancelToken)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetArticlesResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetArticleResponse> getArticle(slug, [cancelToken]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetArticleResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/articles/${slug}',
                    queryParameters: queryParameters,
                    data: _data,
                    cancelToken: cancelToken)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetArticleResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
