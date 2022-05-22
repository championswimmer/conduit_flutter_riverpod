import 'dart:io';

import 'package:conduit_flutter_riverpod/data/articles_provider.dart';
import 'package:conduit_flutter_riverpod/ui/widgets/elements/list_item_article_card.dart';
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

    final contents = response.unwrapPrevious().when(
        error: (error, stackTrace) => AlertDialog(
              title: const Text("Error"),
              content: Text(error is DioError ? error.message : "Could not download"),
            ),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
        data: (articles) => RefreshIndicator(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final article = articles.articles?[index];
                  return ArticleListItemCard(article);
                },
                itemCount: articles.articlesCount,
              ),
              onRefresh: () async {
                ref.refresh(articlesProvider);
              },
              triggerMode: RefreshIndicatorTriggerMode.anywhere,
            ));

    final refreshButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () => ref.refresh(articlesProvider),
          icon: const Icon(Icons.refresh),
          label: Text("Refresh"),
        )
      ],
    );

    return Container(
      child: Stack(
        children: [
          contents,
          if (!(Platform.isAndroid || Platform.isIOS)) refreshButton
        ],
      ),
      padding: EdgeInsets.all(20),
    );
  }
}
