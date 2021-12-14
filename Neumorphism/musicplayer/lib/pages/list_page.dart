import 'package:flutter/material.dart';
import 'package:music_player/core/consts.dart';
import 'package:music_player/models/music_model.dart';
import 'package:music_player/pages/detail_page.dart';
import 'package:music_player/widgets/custom_button.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<MusicModel> _list;
  int _playId;

  @override
  void initState() {
    _playId = 3;
    _list = MusicModel.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${_list[1].album}",
          style: TextStyle(color: AppColors.styleColor),
        ),
        elevation: 0,
        backgroundColor: AppColors.mainColor,
      ),
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      onTap: () {},
                      size: 50,
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.styleColor,
                      ),
                    ),
                    CustomButton(
                      image: 'assets/logo.jpg',
                      size: 150,
                      borderWidth: 6,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => DetailPage(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      child: Icon(
                        Icons.menu,
                        color: AppColors.styleColor,
                      ),
                      size: 50,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  physics: BouncingScrollPhysics(),
                  itemCount: _list.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => DetailPage(),
                          ),
                        );
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          color: _list[index].id == _playId
                              ? AppColors.activeColor
                              : AppColors.mainColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _list[index].title,
                                  style: TextStyle(
                                    color: AppColors.styleColor,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  _list[index].album,
                                  style: TextStyle(
                                    color: AppColors.styleColor.withAlpha((90)),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            CustomButton(
                              child: Icon(
                                _list[index].id == _playId
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: _list[index].id == _playId
                                    ? Colors.white
                                    : AppColors.styleColor,
                              ),
                              size: 50,
                              isActive: _list[index].id == _playId,
                              onTap: () {
                                setState(() {
                                  _playId = _list[index].id;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.mainColor.withAlpha(0),
                    AppColors.mainColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
