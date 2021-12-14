import 'package:flutter/material.dart';
import 'package:music_player/core/consts.dart';
import 'package:music_player/widgets/custom_button.dart';
import 'package:music_player/widgets/custom_progress.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  size: 50,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.styleColor,
                  ),
                ),
                Text(
                  "PLAYING NOW",
                  style: TextStyle(
                      color: AppColors.styleColor, fontWeight: FontWeight.bold),
                ),
                CustomButton(
                  size: 50,
                  onTap: () {},
                  child: Icon(
                    Icons.menu,
                    color: AppColors.styleColor,
                  ),
                )
              ],
            ),
          ),
          CustomButton(
            image: 'assets/logo.jpg',
            size: MediaQuery.of(context).size.width * 0.6,
            borderWidth: 6,
            onTap: () {},
          ),
          Text(
            "Sicko Mode",
            style: TextStyle(
                color: AppColors.styleColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 3),
          ),
          Text(
            "Astroworld-Travis Scott",
            style: TextStyle(
                color: AppColors.styleColor.withAlpha(150),
                fontSize: 16,
                height: 2),
          ),
          Expanded(child: SizedBox()),
          CustomProgress(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  size: 70,
                  onTap: () {},
                  child: Icon(
                    Icons.fast_rewind,
                    color: AppColors.styleColor,
                  ),
                  borderWidth: 5,
                ),
                CustomButton(
                  size: 100,
                  onTap: () {},
                  child: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                  borderWidth: 5,
                  isActive: true,
                ),
                CustomButton(
                  size: 70,
                  onTap: () {},
                  child: Icon(
                    Icons.fast_forward,
                    color: AppColors.styleColor,
                  ),
                  borderWidth: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
