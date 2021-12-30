import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class CartItemTile extends StatelessWidget {
  final String image, title, quantity;
  const CartItemTile(
      {Key? key,
      required this.image,
      required this.title,
      required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: sx(12.0), top: sy(2.0)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
                        width: sx(60),
                        height: sy(30),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ))),
              ),
              SizedBox(
                width: sx(10),
              ),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: sx(12.0), top: sy(2.0)),
            child: Text(
              quantity,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          )
        ],
      );
    });
  }
}
