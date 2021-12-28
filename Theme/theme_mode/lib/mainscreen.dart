import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.brightness_6),
            color: Colors.white,
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).swapTheme();
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
                child: Image.network(
                    'https://imgr.search.brave.com/q_fXckj6AdaPCzSt34xlO-orH2zfznE23udshIQHhC8/fit/574/729/ce/1/aHR0cDovL3BsdXNw/bmcuY29tL2ltZy1w/bmcvZmxvd2VyLXBv/dC1wbmctcHJpbXJv/c2VzLWluLWEtZmxv/d2VyLXBvdC1mcmVl/LXBuZy1pbWFnZS01/NzQucG5n')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Title',
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'efsdfkn afj asfdlj asfdjaefraf aejalejf',
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
