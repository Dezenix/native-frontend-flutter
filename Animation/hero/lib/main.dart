import 'package:flutter/material.dart';
import 'product_model.dart';
import 'product_details.dart';//for navigating to the next page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//   const MyApp
// ({ Key? key }) : super(key: key);

final List<ProductModel>list=[
  ProductModel(
    identity: 1,
    name: "Bananas",
    avatar: "images/bananas.jpg",
    description:"A banana is an elongated , edible fruit-botanically a berry produced by several kinds of large herbaceous flowering plants in the genus Musa.",
  ),
   ProductModel(
    identity: 2,
    name: "Apples",
    avatar: 'images/apples.jpg',
    description: "An apple is an edible fruit produced by an apple tree.Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus",
  ),
   ProductModel(
    identity: 3,
    name: "Oranges",
    avatar: 'images/oranges.jpg',
    description: " The orange is the fruit of various citrus species in the family Rutaceae ;it primarily refers to sweet orange.",
  ),
   ProductModel(
    identity: 4,
    name: "Mangoes",
    avatar: 'images/mango.jpg',
    description: "A mango is an edible stong fruit produced by the tropical tree Mangifera indica whihc is believed to have originated from the region between northwestern Myanmar, Bangladesh, and northeastern India.",
  ),
   ProductModel(
    identity: 5,
    name: "Pineapples",
    avatar: "images/pineapple.jpg",
    description: "A pineapple is a tropical plant with an edible fruit and is the most economically significant plant in the Bromeliaceae. The pineapple is indigenous to South America, where it has been cultivated for many centuries.",
  ),
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        //shadowColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          "Choose your favorite fruit",
          style: TextStyle(
            fontSize: 28.0,
          ),
        ),
        centerTitle: true,
      ),
        body: ListView.separated(
           separatorBuilder: (BuildContext context, int index) => const Divider(), 
           itemCount: list.length,
           itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap:(){ 
                Navigator.push(context, MaterialPageRoute(
                  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                  builder: (ContextAction){
                return ProductDetail(list[index]);
              }));},
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(10.0),
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple.shade800,
                      Colors.purple.shade100,
                    ]
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0))
                ),
                 height: MediaQuery.of(context).size.height*0.15,
                 width: MediaQuery.of(context).size.width,
                 child: Row(
                   // ignore: prefer_const_literals_to_create_immutables
                   children: [
                      const SizedBox(
                       width: 20.0,
                     ),
                       Hero(
                         tag: "avatar"+ list[index].identity.toString(),
                         child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage(
                            list[index].avatar,
                          ),
                        ),
                       ),
                      const SizedBox(
                        width: 40.0,
                      ),
                       Text(
                        list[index].name,
                        style: const TextStyle(
                          fontSize:32.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),    
                   ]  
                 )
              ),
            );
           },
           ),
      ),
    );
  }
}