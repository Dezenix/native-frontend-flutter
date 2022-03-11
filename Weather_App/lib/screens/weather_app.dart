import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_locations.dart';
import 'package:weather_app/widgets/single_weather.dart';
import 'package:weather_app/widgets/slider.dart';

// TODO Implement this library.
class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp>{
  int _currentPage = 0;
  late String bgImg;
  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(locationList[_currentPage].weatherType == 'Sunny'){
      bgImg = 'assets/sunny.jpeg';
    }else if(locationList[_currentPage].weatherType == 'Windy'){
      bgImg = 'assets/wind.jpeg';
    }else if(locationList[_currentPage].weatherType == 'Foggy'){
      bgImg = 'assets/fog.jpeg';
    }else if(locationList[_currentPage].weatherType == 'Rainy'){
      bgImg = 'assets/rain.jpeg';
    }else if(locationList[_currentPage].weatherType == 'Thunderstorm'){
      bgImg = 'assets/thunderstorm.jpeg';
    }else if(locationList[_currentPage].weatherType == 'Snowy'){
      bgImg = 'assets/snow.jpeg';
    }else if(locationList[_currentPage].weatherType == 'Cloudy'){
      bgImg = 'assets/cloudy.jpeg';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Location Now',style: GoogleFonts.lato(
                fontSize: 16 ,
                fontWeight: FontWeight.bold ,
                fontStyle: FontStyle. italic,
                color: Colors.white),
        ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ), onPressed: () {},
         ),
         actions: [
           Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: GestureDetector(
                  onTap: () => print('Change settings'),
                  child:
                  const Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.white,
                  )

              )
           )
          ],
      ),
      body: Container(
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                bgImg,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                ),
              Container(
                decoration: const BoxDecoration(color: Colors.black38),
              ),
              Container(
                margin: const EdgeInsets.only(top: 140,left: 15),
                child: Row(
                  children: [
                    for(int i = 0;i<locationList.length;i++)
                      if(i==_currentPage)
                        SliderDot(true)
                      else
                        SliderDot(false)
                  ],
                ),
              ),
              PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: _onPageChanged,
                itemCount: locationList.length,
                itemBuilder: (ctx, i) => SingleWeather(i),
              ),

            ],
          ),
        ),
      )
    );

  }





}