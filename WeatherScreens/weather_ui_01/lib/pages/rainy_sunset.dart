import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_ui_01/components/bottom_section.dart';
import 'package:weather_ui_01/components/main_temp.dart';

class RainySunset extends StatelessWidget {
  const RainySunset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
      RelativeBuilder(builder: (context, height, width, sy, sx) {
        return Padding(
          padding: EdgeInsets.only(bottom: sy(144), right: sx(20)),
          child: FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.add_rounded,
              color: Color.fromRGBO(60, 51, 94, 1),
              size: 35,
            ),
            mini: true,
          ),
        );
      }),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('lib/assets/images/search.svg'))
        ],
        centerTitle: true,
        title: const Text(
          'Varanasi',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: RelativeBuilder(builder: (context, height, width, sy, sx) {
        return Column(
          children: [
            Container(
                width: sx(700),
                height: sy(360),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(51, 94, 94, 1),
                          Color.fromRGBO(13, 9, 255, 0.45),
                          Color.fromRGBO(0, 178, 255,0.29)
                        ])),
                child: const MainTemperature(image: 'lib/assets/images/sunset-raining.png', temperature: '20', desc: "Sunset, Raining")
            ),
            BottomSection(),
          ],
        );
      }),
    );
  }
}
