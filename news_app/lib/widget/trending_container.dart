import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';


import '../model/news_data.dart';
import '../screen/detail_screen.dart';

class TrendingContainer extends StatefulWidget {
  final Article article;

  const TrendingContainer({ required this.article});
  @override
  _TrendingContainerState createState() => _TrendingContainerState();
}

class _TrendingContainerState extends State<TrendingContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ArticleScreen(
                    article: widget.article,
                  )));
        },
        child: Container(
          margin: const EdgeInsets.only(right: 15),
          child: Stack(
            children: [
              Container(
                height: 250,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(widget.article.image),
                    )),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    color: kBlack,
                  ),
                  child: Column(
                    children: [
                      Text(
                        widget.article.author,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.article.title.length > 20
                            ? widget.article.title.substring(0, 17) + '...'
                            : widget.article.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}