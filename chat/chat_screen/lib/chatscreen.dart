import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({ Key? key }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(23, 87, 122,0.9),
        leading:  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_rounded)),
        title:Row(
         children: const [
           CircleAvatar(
             backgroundImage: AssetImage('images/user.png',  )),
           SizedBox(width: 10,),
           Text("Jane Doe")
        ],
      ),
      actions: [
        IconButton(
          onPressed: (){},
           icon: const Icon(Icons.video_call_rounded, size: 30,)
           )
          ],
      ),
      body:  Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(23, 97, 122,0.3),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.white38, BlendMode.dstATop),
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover
          ),
        ),
        
        child:  Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Align(
                 alignment: Alignment. topLeft,
                child: Container(
                   margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: const BoxDecoration(
                 color: Colors.white,
                 borderRadius:  BorderRadius.all(Radius.circular(20)),
                 
                 
                 ),
                  
                  padding: EdgeInsets.all(10),
                  child: Text("Hello!", style: TextStyle(color:Color.fromRGBO(23, 87, 122,1), fontSize: 17)),
                ),
              ),
               Align(
                 alignment: Alignment. topRight,
                 child: Container(
                   margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: const BoxDecoration(
                 color: Color.fromRGBO(23, 87, 122,0.9),
                 borderRadius:  BorderRadius.all(Radius.circular(20)),
                       ),
                  padding: EdgeInsets.all(10),
                  child: Text("Heyy!", style: TextStyle(color: Colors.white, fontSize: 17),),
                             ),
               ),
               Align(
                 alignment: Alignment. topRight,
                 child: Container(
                   margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: const BoxDecoration(
                 color:Color.fromRGBO(23, 87, 122,0.9),
                 borderRadius:  BorderRadius.all(Radius.circular(20)),
                       ),
                  padding: EdgeInsets.all(10),
                  child: const Text("How are you?", style: TextStyle(color: Colors.white, fontSize: 17),),
                             ),
               ),
               Expanded(
                 child: Align(
                   alignment: Alignment.bottomCenter,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 18.0),
                     child: Row(
                       children: [
                         Container(
                           padding: const EdgeInsets.all(10),
                           decoration: const BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10),
                             ),
                             
                             color: Colors.white
                           ),
                           width:  MediaQuery. of(context). size. width * 0.8,
                           child: TextFormField(
                                  cursorColor:  const Color.fromRGBO(23, 87, 122,1),
                                  style: const TextStyle(fontSize: 20,color: Color.fromRGBO(23, 87, 122,1)),
                                  keyboardType: TextInputType.text,
                                  minLines: 1,
                                   maxLines: 5,
                                  decoration:  const InputDecoration(
                                     contentPadding: EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Type here...',
                                    prefixIcon: Icon(Icons.keyboard),
                                    suffixIcon: IconButton(onPressed: null , icon: Icon(Icons.send))
                                   // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),),
                                  ),  
                                ),
                         ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.mic, size: 30, color:  Color.fromRGBO(23, 87, 132,1),))
                       ],
                     ),
                   ),
                 ),
               ),
            ],
          ),
        ),

      ) 
    );
  }
}