
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "onboarding ui",
      home: OnBoardScreen(),
    );
  }
}

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/bgvideo.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                height: _controller.value.size.height,
                width: _controller.value.size.width,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Positioned.fill(
            bottom: 30,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'SPACE X',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.averiaLibre(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 2,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Most Heartly Welcome to \n Space X enjoy the virtual \n event of space',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.averiaLibre(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                height: 200,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
