import 'package:flutter/material.dart';
import 'package:furniture_landingpg/widgets/product_card.dart';

class Chair extends StatelessWidget {
  const Chair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Pcard(
            rating: 3,
            pname: "Office Chair",
            pdescreption: "A Modern Black Comfortable Chair.",
            price: 200,
            pimage: "assets/images/chair1.jpg",
          ),
          Pcard(
            rating: 4,
            pname: "Blue Chair",
            pdescreption: "A Chair for Home Use .",
            price: 400,
            pimage: "assets/images/chair2.jpg",
          ),
          Pcard(
            rating: 5,
            pname: "Comfortable Chair",
            pdescreption: "The most Comfortable Chair",
            price: 1000,
            pimage: "assets/images/chair3.jpg",
          ),
          Pcard(
            rating: 3,
            pname: "Office Chair",
            pdescreption: "A Modern Black Comfortable Chair.",
            price: 200,
            pimage: "assets/images/chair1.jpg",
          ),
          Pcard(
            rating: 4,
            pname: "Blue Chair",
            pdescreption: "A Chair for Home Use .",
            price: 400,
            pimage: "assets/images/chair2.jpg",
          ),
          Pcard(
            rating: 5,
            pname: "Comfortable Chair",
            pdescreption: "The most Comfortable Chair",
            price: 1000,
            pimage: "assets/images/chair3.jpg",
          ),
        ],
      ),
    );
  }
}
