import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:shop_ui/widgets/product_item.dart';
import '../models/product_model.dart';

class ItemList extends StatelessWidget {
  ItemList({Key? key}) : super(key: key);
  final List<Product> items = [
    Product(
        name: 'Ice Cream',
        price: '35.78',
        discount: '\$25',
        image:
            'https://images.unsplash.com/photo-1488900128323-21503983a07e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        desc: '800gm'),
    Product(
        name: 'Milk',
        price: '15.78',
        discount: '\$12',
        image:
        'https://images.unsplash.com/photo-1563636619-e9143da7973b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
        desc: '1 L'),
    Product(
        name: 'Meat',
        price: '20.15',
        discount: '\$15',
        image:
        'https://images.unsplash.com/photo-1628543108325-1c27cd7246b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        desc: '1 KG'),
    Product(
        name: 'Mofin',
        price: '18.24',
        discount: '\$14',
        image: 'https://images.unsplash.com/photo-1603532648955-039310d9ed75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        desc: '250 gm'),
    Product(
        name: 'Cabbage',
        price: '20.15',
        discount: '\$15',
        image: 'https://images.unsplash.com/photo-1579584705540-46ebde56da8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        desc: '1 KG'),
    Product(
        name: 'Bundle Pack',
        price: '22.08',
        discount: '\$18',
        image: 'https://images.unsplash.com/photo-1576330383200-2bf325cfec52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        desc: 'Apple, Oranges, Oil...'),
    Product(
        name: 'Eggs',
        price: '10.08',
        discount: '\$8',
        image: 'https://images.unsplash.com/photo-1506976785307-8732e854ad03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=743&q=80',
        desc: '20 Units'),
    Product(
        name: 'Butter',
        price: '5.08',
        discount: '\$2',
        image: 'https://images.unsplash.com/photo-1589985270826-4b7bb135bc9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        desc: '1 Unit'),
  ];
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'New Item',
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
        body: Padding(
          padding:
              EdgeInsets.only(top: sy(12.0), right: sx(12.0), left: sx(12.0)),
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 35,
                mainAxisSpacing: 20),
            itemBuilder: (context, i) => ProductItem(
              name: items[i].name,
              desc: items[i].desc,
              discount: items[i].discount,
              price: items[i].price,
              image: items[i].image,
            ),
          ),
        ),
      );
    });
  }
}
