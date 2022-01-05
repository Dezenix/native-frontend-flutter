import 'package:flutter/material.dart';

class CartFull extends StatefulWidget {
  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    //final themeChange = Provider.of<DarkThemeProvider>(context);
    return Container(
      height: 135,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          const Radius.circular(4.0),
        ),
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          Container(
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://imgr.search.brave.com/XRqKW4Tndz4qvxPqE5MbwjO2CGDr8z1RSr1AUwJmt-Q/fit/1200/1200/ce/1/aHR0cHM6Ly8zLmJw/LmJsb2dzcG90LmNv/bS8tYXFMS2FtOEts/cG8vVlBEVHNROGpw/UUkvQUFBQUFBQUFF/bTQvc2dxREQwbERx/b28vczE2MDAvbWRy/LTFhYnRfc3RhbmRh/cmRfc2lsLmpwZw'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Product Name',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32.0),
                          // splashColor: ,
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Price:'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'INR ₹9900.0',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Ships Free',
                        style: TextStyle(
                            color:
                                // themeChange.darkTheme
                                // ? Colors.brown.shade900
                                // :
                                Theme.of(context).accentColor),
                      ),
                      Spacer(),
                      Card(
                        color: Colors.greenAccent.shade700,
                        elevation: 12,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'BUY',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
