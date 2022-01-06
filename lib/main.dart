import 'package:dicoding/object/articles.dart';
import 'package:dicoding/pages/article_web_page.dart';
import 'package:dicoding/pages/detail_page.dart';
import 'package:dicoding/pages/list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: NewListPage.routeName,
      routes: {
        NewListPage.routeName: (context) => NewListPage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
              article: ModalRoute.of(context)?.settings.arguments as Article,
            ),
        ArticleWebPage.routeName: (context) => ArticleWebPage(
            url: ModalRoute.of(context)?.settings.arguments as String)
      },
    );
  }
}
