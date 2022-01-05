import 'package:cartscreen01/carfull.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: checkoutSection(context),
        appBar: AppBar(
          title: Text('All Cart Items'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 60),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext ctx, int index) {
                return CartFull();
              }),
        ));
  }

  Widget checkoutSection(BuildContext ctx) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                'Total: ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'INR ₹9900.0',
                //textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ));
  }
}
