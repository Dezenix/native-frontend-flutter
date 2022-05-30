
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/car.dart';
import '../../../widget/attribute.dart';
import '../../../widget/rating_bar.dart';

class CarDetailInfomation extends StatelessWidget {
  const CarDetailInfomation({
  
    required this.car,
  }) ;

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          color:Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          CarInfo(car: car),
          Divider(
            height: 16,
            color: Colors.black54,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/av.png',
                height: 120,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  children: [
                    DriverInfo(),
                    SizedBox(
                      height: 12,
                    ),
                    DiverAppraise(),
                    SizedBox(
                      height: 12,
                    ),
                    DriverCall(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DriverCall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(
          onPressed: () {},
          color: mCardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          child: Text(
            'Call',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: mCardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          child: Text(
            'Book Now',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class DiverAppraise extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '5.0',
          style: TextStyle(),
        ),
        SizedBox(
          width: 6,
        ),
        RatingBar(
          onRatingUpdate: (value) {},
          size: 14,
          selectColor: Colors.yellow, padding: 0.0,
        ),
      ],
    );
  }
}

class DriverInfo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jesica Smith',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'License NWR 369852',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '369',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Ride',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CarInfo extends StatelessWidget {
  const CarInfo({
   
    required this.car,
  }) ;

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\$${car.price}',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'price/hr',
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Attribute(
              value: car.brand,
              name: 'Brand',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.model,
              name: 'Model No',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.co2,
              name: 'CO2',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.fuelCons,
              name: 'Fule Cons.',
              textColor: Colors.black87,
            ),
          ],
        )
      ],
    );
  }
}
