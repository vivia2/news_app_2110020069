import 'package:flutter/material.dart';
import 'package:news_app_2110020069/components/customListTile.dart';
import 'package:news_app_2110020069/model/article_model.dart';
import 'package:news_app_2110020069/services/api_service.dart';

class SportsPage extends StatefulWidget {
  const SportsPage({Key key}) : super(key: key);

  @override
  State<SportsPage> createState() => _SportsPageState();
}

class _SportsPageState extends State<SportsPage> {
  @override
  Widget build(BuildContext context) {
    final ApiService client = ApiService();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Sports News'),
      ),
      body: FutureBuilder(
        future: client.getArticleSports(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
