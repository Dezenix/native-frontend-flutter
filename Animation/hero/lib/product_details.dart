import 'package:flutter/material.dart';
import 'product_model.dart';

class ProductDetail
 extends StatelessWidget {
  // const ProductDetail
  // ({ Key? key }) : super(key: key);
  final ProductModel product;//created an object
  const ProductDetail(this.product);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade100,
        appBar: AppBar(
          shadowColor:Colors.black,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:const Icon(Icons.arrow_back_ios)),
          title: Text(
            product.name,
            style: const TextStyle(
              fontSize:30.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  // 
                  color: Colors.black,
                ),
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: "avatar"+product.identity.toString(),
                  child: CircleAvatar(radius: 120,
                  backgroundImage: AssetImage(product.avatar)
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 40.0,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.25,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.white),
                 gradient: LinearGradient(
                   colors: [
                     Colors.purple.shade300,
                     Colors.purple.shade800,
                   ]
                 ),
                  borderRadius:BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      product.description,
                      style:const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}