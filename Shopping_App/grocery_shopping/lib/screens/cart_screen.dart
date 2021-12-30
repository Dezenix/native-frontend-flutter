import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:shop_ui/models/cart_items.dart';
import 'package:shop_ui/widgets/cart_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List<String> items = [
    "https://images.unsplash.com/photo-1557844352-761f2565b576?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1506976785307-8732e854ad03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=743&q=80",
    "https://images.unsplash.com/photo-1630356090105-808ba2fe97f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1033&q=80",
  ];
  final List<CartItem> cartItems = [
    CartItem(
        image:
            'https://images.unsplash.com/photo-1611105637889-3afd7295bdbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        title: 'Cabbage',
        quantity: '2KG'),
    CartItem(
        image:
            'https://images.unsplash.com/photo-1582284540020-8acbe03f4924?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        title: 'Tomato',
        quantity: '2KG'),
    CartItem(
        image:
            'https://images.unsplash.com/photo-1518977676601-b53f82aba655?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        title: 'Potato',
        quantity: '2KG'),
    CartItem(
        image:
            'https://images.unsplash.com/photo-1546860255-95536c19724e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=408&q=80`',
        title: 'Chilli',
        quantity: '2KG'),
    CartItem(
        image:
            'https://images.unsplash.com/photo-1602470520998-f4a52199a3d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        title: 'Meat',
        quantity: '2KG'),
    CartItem(
        image:
            'https://images.unsplash.com/photo-1576330383200-2bf325cfec52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        title: 'Fish',
        quantity: '2KG')
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bundle Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: RelativeBuilder(builder: (context, height, width, sy, sx) {
        return Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(sx(15.0)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            child: CarouselSlider.builder(
                                itemCount: items.length,
                                itemBuilder: (context, index, realIndex) {
                                  String imageUrl = items[index];
                                  return CarouselImage(imageUrl);
                                },
                                options: CarouselOptions(
                                  onPageChanged: (index, reason) => {
                                    setState(() => {currentIndex = index})
                                  },
                                  enableInfiniteScroll: false,
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 3),
                                  height: sy(120),
                                  viewportFraction: 1,
                                )),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: sy(6),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: sx(30),
                              ),
                              Padding(
                                padding: EdgeInsets.all(sy(8.0)),
                                child: SvgPicture.asset(
                                    'assets/images/cart/fav.svg'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: sy(50),
                          ),
                          Center(
                            child: AnimatedSmoothIndicator(
                              activeIndex: currentIndex,
                              count: items.length,
                              effect: const ExpandingDotsEffect(
                                dotColor: Colors.white,
                                activeDotColor: Colors.red,
                                strokeWidth: 0.5,
                                dotHeight: 10,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sx(20.0), top: sy(5), bottom: sy(5)),
                    child: const Text(
                      'Bundle Pack',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sx(20.0), right: sx(20), bottom: sy(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '\$30',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: sx(5),
                              ),
                              Text(
                                '15.78',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey[800],
                                    fontSize: 12),
                              )
                            ]),
                        Row(
                          children: [
                            PhysicalModel(
                                color: Colors.transparent,
                                elevation: 6,
                                borderRadius: BorderRadius.circular(25.0),
                                child: SvgPicture.asset(
                                  'assets/images/cart/minus.svg',
                                  width: sx(35),
                                )),
                            SizedBox(
                              width: sx(12),
                            ),
                            const Text(
                              '3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              width: sx(12),
                            ),
                            PhysicalModel(
                                color: Colors.transparent,
                                elevation: 6,
                                borderRadius: BorderRadius.circular(25.0),
                                child: SvgPicture.asset(
                                  'assets/images/cart/add.svg',
                                  width: sx(35),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: sx(20.0)),
                        child: Column(
                          children: const [
                            Text(
                              '25 KG',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Text('Weight',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            'Medium',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text('Size',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: sx(20.0)),
                        child: Column(
                          children: const [
                            Text(
                              '19',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Text('Items',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sx(20.0), top: sy(8.0)),
                    child: const Text(
                      'Pack Details',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sy(8),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sx(12.0), right: sx(25.0)),
                    child: Container(
                      height: sy(130),
                      child: ListView.builder(
                          itemCount: cartItems.length,
                          itemBuilder: (context, index) => CartItemTile(
                                image: cartItems[index].image,
                                title: cartItems[index].title,
                                quantity: cartItems[index].quantity,
                              )),
                    ),
                  ),
                  SizedBox(
                    height: sy(70),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: sy(60),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(sy(0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: sx(20.0), right: sx(20.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Review',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/cart/stars.svg'),
                              SizedBox(
                                width: sx(5),
                              ),
                              SvgPicture.asset('assets/images/cart/arrow.svg'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: sx(20.0), right: sx(20.0), top: sy(5.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PhysicalModel(
                              borderRadius: BorderRadius.circular(25.0),
                              elevation: 6,
                              color: Colors.transparent,
                              child: SvgPicture.asset(
                                  'assets/images/cart/cart.svg')),
                          ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: sx(100.0),
                                  left: sx(100.0),
                                  top: sy(3.0),
                                  bottom: sy(3.0)),
                              child: const Text(
                                'Buy Now',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget CarouselImage(String imageUrl) {
    return Container(
      width: double.infinity,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
