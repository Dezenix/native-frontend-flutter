
import 'package:flutter/material.dart';

import 'model/car.dart';


Color mPrimaryColor = Color(0xFF40ac9c);

Color mCardColor = Color(0xFF203e5a);
const Color maccentColor = Color.fromRGBO(25, 35, 50, 1);
const Color mbottonColor = Color.fromRGBO(234, 78, 74, 1);
const Color mpinkColor = Color.fromRGBO(136, 30, 255, 1);
const Color mblueColor = Colors.blue;

const double mpadding = 20.0;

List<Car> carList = [
  Car('assets/images/bentley.png', 120, 'Bentley', '3A 9200', '77/km', '5,5 L'),
  Car('assets/images/rolls_royce.png', 185, 'RR', '3A 9200', '77/km', '5,5 L'),
  Car('assets/images/maserati.png', 100, 'Maserati', '3A 9200', '77/km', '5,5 L'),
  Car('assets/images/cadillac.png', 90, 'Cadillac', '3A 9200', '77/km', '5,5 L'),
];
