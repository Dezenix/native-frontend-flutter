import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shimmer Slidebar',
      routes: {
        'loading': (_) => const ShimmerSlidebar(),
      },
      home: const ShimmerSlidebar(),
    );
  }
}

class ShimmerSlidebar extends StatefulWidget {
  const ShimmerSlidebar({ Key? key }) : super(key: key);

  @override
  State<ShimmerSlidebar> createState() => _ShimmerSlidebarState();
}

class _ShimmerSlidebarState extends State<ShimmerSlidebar> {
  double _currentSliderValue = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 64, 129, 1),
        //backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Shimmer Slidebar',
            style: GoogleFonts.nunito(
              color: const Color.fromARGB(255, 213, 248, 214),
              fontSize:40.0,
              fontWeight: FontWeight.bold,
              shadows: [
                const Shadow(
                  color: Color.fromARGB(0, 0, 0, 0),
                  blurRadius: 1.5,
                )
              ]
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Shimmer.fromColors(
          baseColor: const Color.fromRGBO(255, 64, 129, 1),
          highlightColor: const Color.fromARGB(255, 161, 245, 164),
          enabled: true,
          child: Slider(
                  inactiveColor: const Color.fromARGB(255, 213, 248, 214),
                  activeColor: const Color.fromARGB(255, 255, 133, 174),
                  value: _currentSliderValue,
                  max: 100,
                  divisions: 100,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
        ),            
      ),
    );
  }
}

