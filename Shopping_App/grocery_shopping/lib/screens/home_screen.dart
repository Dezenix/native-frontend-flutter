import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:shop_ui/widgets/bottom_app_bar_icon.dart';
import '../models/product_model.dart';
import '../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List<Product> packs = [
    Product(
        name: 'Bundle Pack',
        price: '22.08',
        discount: '\$18',
        image:
            'https://images.unsplash.com/photo-1488459716781-31db52582fe9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        desc: 'Apple, Oranges, Oil...'),
    Product(
        name: 'Bundle Pack',
        price: '22.08',
        discount: '\$18',
        image:
            'https://images.unsplash.com/photo-1543168256-418811576931?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        desc: 'Apple, Oranges, Oil...'),
    Product(
        name: 'Bundle Pack',
        price: '22.08',
        discount: '\$18',
        image:
            'https://images.unsplash.com/photo-1488459716781-31db52582fe9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        desc: 'Apple, Oranges, Oil...'),
  ];
  final List<Product> newItems = [
    Product(
        name: 'Grapes',
        price: '20.15',
        discount: '\$15',
        image:
            'https://images.unsplash.com/photo-1539519532614-723937382b86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        desc: '1 KG'),
    Product(
        name: 'Cauliflower',
        price: '10.15',
        discount: '\$5',
        image:
            'https://images.unsplash.com/photo-1584615467033-75627d04dffe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        desc: '1 KG'),
  ];

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: SvgPicture.asset(
            'assets/images/home-screen/fab.svg',
            width: sx(40),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6.0, right: 8.0, left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BottomAppBarIcon(
                      icon: 'assets/images/home-screen/home-bottom.svg',
                      title: 'Home'),
                  BottomAppBarIcon(
                      icon: 'assets/images/home-screen/menu-bottom.svg',
                      title: 'Menu'),
                  BottomAppBarIcon(
                      icon: 'assets/images/home-screen/save-bottom.svg',
                      title: 'Save'),
                  BottomAppBarIcon(
                      icon: 'assets/images/home-screen/profile-bottom.svg',
                      title: 'Profile'),
                ],
              ),
            )),
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.all(11.0),
              child: SvgPicture.asset('assets/images/home-screen/menu.svg')),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/images/home-screen/search.svg',
                width: sx(45),
              ),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/home-screen/location.svg'),
              SizedBox(
                width: sx(6),
              ),
              Column(
                children: [
                  const Text(
                    'Current Location',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'kanchrapara',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 12,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
              SizedBox(
                width: sx(6),
              ),
              SvgPicture.asset('assets/images/home-screen/drop-arrow.svg'),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(sx(15.0)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child:
                          Image.asset('assets/images/home-screen/banner.png')),
                ),
                Padding(
                  padding: EdgeInsets.all(sx(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Popular Pack',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: sy(160),
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: packs.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, i) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ProductItem(
                                name: packs[i].name,
                                image: packs[i].image,
                                price: packs[i].price,
                                desc: packs[i].desc,
                                discount: packs[i].discount),
                          )),
                ),
                Padding(
                  padding: EdgeInsets.all(sx(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Our New Item',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: sy(160),
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: newItems.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, i) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ProductItem(
                                name: newItems[i].name,
                                image: newItems[i].image,
                                price: newItems[i].price,
                                desc: newItems[i].desc,
                                discount: newItems[i].discount),
                          )),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
