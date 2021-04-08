import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CategoryNews extends StatefulWidget {

  final String imageUrl;
  ArticleView({this.imageUrl});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebView(
        initialUrl: ,
      ),
    );
  }
}