import 'package:conduit_flutter_riverpod/network/dtos/get_articles_response.dart';
import 'package:flutter/material.dart';

class ArticleListItemCard extends StatelessWidget {
  Article? article;
  ArticleListItemCard(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: EdgeInsets.all(100),
          child: Text(article?.title ?? "")),
    );
  }
}
