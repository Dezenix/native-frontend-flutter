import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItem extends StatelessWidget {
  final String name, image, price, desc, discount;
  const ProductItem(
      {Key? key,
      required this.name,
      required this.image,
      required this.price,
      required this.desc,
      required this.discount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return PhysicalModel(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.transparent,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: GridTile(
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
              footer: Container(
                height: sy(55),
                child: GridTileBar(
                  trailing: Column(
                    children: [
                      SizedBox(
                        height: sy(33),
                      ),
                      SvgPicture.asset(
                          'assets/images/item-list/add-to-cart.svg'),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  title: Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        desc,
                        style: TextStyle(color: Colors.grey[800], fontSize: 14),
                      ),
                      SizedBox(
                        height: sy(5),
                      ),
                      Row(
                        children: [
                          Text(
                            discount,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: sx(15),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 13,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )),
      );
    });
  }
}
