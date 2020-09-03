import 'package:api_integration/models/newsInfo.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final Article article;
  NewsItem({this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                child: Image.network(article.urlToImage),
              ),
              Container(
                margin: EdgeInsets.all(5),
                alignment: Alignment.bottomLeft,
                child: Text(
                  article.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    backgroundColor: Colors.black45,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          article.description.substring(0, 60),
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              article.author == null
                                  ? 'Unknown Author'
                                  : article.author,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(' - '),
                            Text((article.publishedAt).toString())
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
