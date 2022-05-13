import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:login01/social_screens/search_screen.dart';

import '../appBar_theme.dart';
import '../models/message_model.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget{

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<MessageModel> messages = [];

  final _pageViewController = PageController();

  int _activePage = 0;

  List<TextEditingController?> comment_controller =  List<TextEditingController?>
      .generate(13, (index) => TextEditingController());

  @override
  void didUpdateWidget(HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    comment_controller.clear();
    comment_controller = List<TextEditingController?>
        .generate(13, (index) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {

    FlutterNativeSplash.remove();
    return Scaffold(
      bottomNavigationBar: _activePage == 0?BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items:  [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home' ),
          BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.search),
                  onPressed: () {
                      showSearch(
                          context: context,
                          delegate: SearchScreen()
                      );
                    },
              ),label: 'Search'),
          BottomNavigationBarItem(icon:Icon(Icons.favorite),label: 'Favorites' ),
          BottomNavigationBarItem(icon:Icon(Icons.people),label: 'Friends' ),
        ],
        onTap: (index) {
          _pageViewController.animateToPage(index, duration:
          Duration(milliseconds: 200), curve: Curves.bounceOut);
        }
      ):null,
      appBar: AppBarThemeChange(_activePage),
      body: PageView(
        children: [
          Row(
              children:[
                Image.network("https://imagesvc.meredithcorp.io/v3/mm/i"
                    "mage?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-cont"
                    "ent%2Fuploads%2Fsites%2F14%2F2022%2F02%2F25%2FGettyImages-1370077612-1-2000.jpg&q=60",
                width: 14,height:14),
              ]
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.separated(
                  physics: const BouncingScrollPhysics() ,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(spreadRadius: 0.1
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent,
                    ),
                    width:300,
                    child: Column(
                        children : [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 13,
                                  backgroundImage:  NetworkImage(
                                    "https://imagesvc.meredithcorp.io/v3/mm/image?u"
                                        "rl=https%3A%2F%2Fstatic.onecms.io%2Fwp-conte"
                                        "nt%2Fuploads%2Fsites%2F14%2F2022%2F02%2F25%2F"
                                        "GettyImages-1370077612-1-2000.jpg&q=60",
                                  ),
                                ),
                                SizedBox(width:3),
                                Text('badgirlriri',style: TextStyle(fontFamily: "Arial"),),
                                Spacer(),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                          ),
                          Image.network("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F14%2F2022%2F02%2F25%2FGettyImages-1370077612-1-2000.jpg&q=60"),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color:Colors.greenAccent
                                    )
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 8),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Icon(Icons.favorite_border),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Icon(Icons.comment_outlined),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Icon(Icons.share),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:1.0,right:8.0,top:8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Text(" 250 likes")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 17,
                                              backgroundImage:  NetworkImage(
                                                "https://imagesvc.meredithcorp.io/v3/mm/image?u"
                                                    "rl=https%3A%2F%2Fstatic.onecms.io%2Fwp-conte"
                                                    "nt%2Fuploads%2Fsites%2F14%2F2022%2F02%2F25%2F"
                                                    "GettyImages-1370077612-1-2000.jpg&q=60",
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                child: TextField(
                                                  autocorrect: false,
                                                  controller: comment_controller[index],
                                                  decoration: InputDecoration(
                                                      border: InputBorder. none,
                                                      hintText: 'Comment as dezenix_user...'
                                                  ),
                                                  onTap: (){},
                                                  onSubmitted: (value) {
                                                    //comment_controller[index]?.clear();
                                                  },
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                                child: Text("Post"),
                                                onPressed: (){
                                                }
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(),
                  ),
                  itemCount: 7),
            ),
          ),
          ChatScreen()
        ],
        onPageChanged: (index) {
          setState(() {
            _activePage = index;
          });
        }
      ),
    );
  }
}