// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:furniture_landingpg/chair.dart';

class tabbbs extends StatelessWidget {
  const tabbbs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, // length of tabs
        initialIndex: 0,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: const TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: 'Chairs'),
                    Tab(text: 'Bed'),
                    Tab(text: 'Cupboard'),
                    Tab(text: 'Tables'),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                    height: 500, //height of TabBarView
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(children: <Widget>[
                      Container(
                        child: const Center(
                          child: Chair(),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Display Data of Bed Category',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Display Data of Cupboard Category',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Display Data of Table Category',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ])),
              )
            ]));
  }
}
