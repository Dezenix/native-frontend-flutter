import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: BottomNavBar1(),
    );
  }
}

class BottomNavBar1 extends StatefulWidget {
  const BottomNavBar1({Key? key}) : super(key: key);

  @override
  _BottomNavBar1State createState() => _BottomNavBar1State();
}

class _BottomNavBar1State extends State<BottomNavBar1> {
  int selectedIndex=0;
  List<IconData> data=[
    Icons.home,
    Icons.search,
    Icons.add_circle,
    Icons.event_available,
    Icons.account_circle,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      bottomNavigationBar: Padding(
        padding:const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          child: SizedBox(
            height: 70.0,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedIndex=index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        width: 45,
                        decoration: BoxDecoration(
                          border: index==selectedIndex?const Border(
                              top: BorderSide(
                                  width: 2.0, color:
                          Colors.white),
                              // bottom: BorderSide(
                              //     width: 2.0,
                              //     color: Colors.white
                              // ),
                           // right: BorderSide(
                           //      width: 2.0,
                           //      color: Colors.white
                           //  ),
                           //  left: BorderSide(
                           //      width: 2.0,
                           //      color: Colors.white
                           //  ),
                          ):null,
                          gradient: index==selectedIndex?LinearGradient(colors: [
                            Colors.cyan.shade800,
                            Colors.black
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                          ):null,
                        ),
                        child: Icon(
                          data[index],
                          size: 35,
                          color: index==selectedIndex?Colors.white:Colors.cyanAccent,
                        ),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}


