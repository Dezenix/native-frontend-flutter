import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Linear progress Indicator';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color> animation;
  double progress = 0;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    animation =
       ColorTween(
    begin: Colors.yellow,
    end: Colors.blue,
  ) as Animation<Color>;
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future startDownload() async {
    final url =
        'https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_640_3MG.mp4';

    final request = Request('GET', Uri.parse(url));
    final response = await Client().send(request);
    final contentLength = response.contentLength;

    final file = await getFile('file.mp4');
    final bytes = <int>[];
    response.stream.listen(
      (newBytes) {
        bytes.addAll(newBytes);

        setState(() {
          progress = bytes.length / contentLength!;
        });
      },
      onDone: () async {
        setState(() {
          progress = 1;
        });

        await file.writeAsBytes(bytes);
      },
      onError: print,
      cancelOnError: true,
    );
  }

  Future<File> getFile(String filename) async {
    final dir = await getApplicationDocumentsDirectory();

    return File('${dir.path}/$filename');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildHeader('Download files'),
              SizedBox(
                width: 100,
                height: 100,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: progress,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      strokeWidth: 10,
                      backgroundColor: Colors.white,
                    ),
                    Center(child: buildProgress()),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 200,
                height: 30,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    LinearProgressIndicator(
                      value: progress,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      backgroundColor: Colors.white,
                    ),
                    Center(child: buildLinearProgress()),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              FloatingActionButton.extended(
                onPressed: () => startDownload(),
                label: Text('Download'),
                icon: Icon(Icons.file_download),
              ),
              // TweenAnimationBuilder(
              //   tween: Tween(begin: 0.0, end: 1.0),
              //   duration: Duration(seconds: 4),
              //   builder: (context, value, _) => SizedBox(
              //     width: 200,
              //     height: 200,
              //     child: CircularProgressIndicator(
              //       value: value,
              //       backgroundColor: Colors.grey,
              //       strokeWidth: 8,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );

  Widget buildProgress() {
    if (progress == 1) {
      return Icon(
        Icons.done,
        color: Colors.green,
        size: 56,
      );
    } else {
      return Text(
        '${(progress * 100).toStringAsFixed(1)}',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24,
        ),
      );
    }
  }

  Widget buildLinearProgress() => Text(
        '${(progress * 100).toStringAsFixed(1)}',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      );

  Widget buildHeader(String text) => Container(
        padding: EdgeInsets.only(bottom: 32),
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
}



