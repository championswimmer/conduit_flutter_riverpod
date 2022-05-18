import 'package:conduit_flutter_riverpod/data/articles_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArticleListFragment extends ConsumerWidget {
  const ArticleListFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var response = ref.watch(articlesProvider);

    var contents = response.unwrapPrevious().when(
        error: (error, stackTrace) => AlertDialog(
              title: const Text("Error"),
              content: Text(error is DioError ? error.message : "Could not download"),
            ),
        loading: () => Center(
              child: CircularProgressIndicator(),
            ),
        data: (articles) => RefreshIndicator(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final article = articles.articles?[index];
                  return Card(
                    child: Container(
                        padding: EdgeInsets.all(100),
                        child: Text(article?.title ?? "")),
                  );
                },
                itemCount: articles.articlesCount,
              ),
              onRefresh: () async {
                ref.refresh(articlesProvider);
              },
              triggerMode: RefreshIndicatorTriggerMode.anywhere,
            ));

    return Container(
      child: Stack(
        children: [
          contents,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => ref.refresh(articlesProvider),
                icon: const Icon(Icons.refresh),
                label: Text("Refresh"),
              )
            ],
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
    );
  }
}
