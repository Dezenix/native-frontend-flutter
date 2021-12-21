import 'package:drawerbar_01/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends DrawerContent {
  MainPage({Key key, this.title});
  final String title;
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  child: Material(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: widget.onMenuPressed,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(widget.title),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  HiddenDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = HiddenDrawerController(
      initialPage: MainPage(
        title: 'main',
      ),
      items: [
        DrawerItem(
          text: Text('Home', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
          page: MainPage(
            title: 'Home',
          ),
        ),
        DrawerItem(
          text: Text(
            'Gallery',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.photo_album, color: Colors.white),
          page: MainPage(
            title: 'Gallery',
          ),
        ),
        DrawerItem(
          text: Text(
            'Favorites',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.favorite, color: Colors.white),
          page: MainPage(
            title: 'Favorites',
          ),
        ),
        DrawerItem(
          text: Text(
            'Notification',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.notifications, color: Colors.white),
          page: MainPage(
            title: 'Notification',
          ),
        ),
        DrawerItem(
          text: Text(
            'Invite',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.insert_invitation, color: Colors.white),
          page: MainPage(
            title: 'invite',
          ),
        ),
        DrawerItem(
          text: Text(
            'SETTINGS',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.settings, color: Colors.white),
          page: MainPage(
            title: 'SETTINGS',
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HiddenDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      'https://imgr.search.brave.com/shJv7xw3G1-CM5gHA6k3NV4Ash3x7xC8uz2CFWt-7Rk/fit/512/512/ce/1/aHR0cDovL3d3dy5w/bmdhbGwuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy81L1Byb2Zp/bGUtTWFsZS1QTkct/RnJlZS1Eb3dubG9h/ZC5wbmc'),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Firstname Lastname',
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepPurple[400],
              Colors.blue[200],
              Colors.blue[900]
            ],
            // tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
