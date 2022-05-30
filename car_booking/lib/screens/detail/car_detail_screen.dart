
import 'package:flutter/material.dart';

import '../../model/car.dart';
import 'widget/car_detail_infomation.dart';
import 'widget/my_appbar.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  CarDetailScreen(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/map.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            MyAppbar(),
            Positioned(
              left: 24,
              right: 24,
              bottom: 24,
              child: Stack(
                children: [
                  CarDetailInfomation(car: car),
                  Positioned(
                    right: 16,
                    child: Image.asset(
                      car.image,
                      height: 100,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

