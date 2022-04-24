import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login01/social_screens/home_screen.dart';

import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'package:http/http.dart' as http;

class OTPScreen extends StatefulWidget{
  String phone_no;
  OTPScreen(this.phone_no, {Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() {
    print("State");
    return _OTPScreenState();
  }
}

class _OTPScreenState extends State<OTPScreen> {

  String? code = ""; dynamic response;

  late Future<dynamic> response_data;

  void SmsAutoFilling() async{
    await SmsAutoFill().listenForCode;
  }

  @override
  void initState() {
    super.initState();
    print("initState()");
    SmsAutoFilling();
  }
  void HttpRequestCall() async {

    var number = Random();
    code  = (number.nextInt(500000) + 100000).toString();
    print(code);

    var credentials = 'ACacfb124bfb1634abddf47317fab0dd77:'
        '4039a7010395807ab7b68ff8f9a3d609';

    var bytes = utf8.encode(credentials);

    var base64Str = base64.encode(bytes);
    var url = 'https://api.twilio.com/2010-04-01/'
        'Accounts/ACacfb124bfb1634abddf47317fab0dd77/Messages.json';

    response = await http.post(Uri.parse(url), headers: {
    'Authorization': 'Basic ${base64Str}'
    },
      body: {
        'MessagingServiceSid': 'MGe0fd709e438deca6a39fdb289d531a6f',

        'To': widget.phone_no,

        'Body': 'OTP: ${code!.toString()}'
      });
  print('Response status: ${response.statusCode}');

  print('Response body: ${response.body}');


  }

  Future<String> getValue() async {
    await Future.delayed(Duration.zero,
      () {

       return  HttpRequestCall();
      },
    );

    print("response_data ${ json.decode(response.body)['body'].toString().substring(5)  }");
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    print("build(context)");
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff040c1a),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:18.0,top:78.0),
                child: Text("Enter the PIN code",
                style: TextStyle(fontSize: 26,color: Colors.white),),
              ),
            ],
          ),
          FutureBuilder<dynamic>(
            future : getValue(),
            initialData: 'Loading',
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if(snapshot.connectionState == ConnectionState.done){
                if (!snapshot.hasData) return Text("No internet connection");
               else return Padding(
                   padding: const EdgeInsets.only(top:32.0,left: 16,right: 16),
                   child: Center(
                     child: PinFieldAutoFill(
                       decoration: UnderlineDecoration(
                         textStyle: TextStyle(fontSize: 20, color: Colors.white),
                         colorBuilder: FixedColorBuilder(Colors.blue),
                       ),
                       onCodeSubmitted: (code) {
                         print(code);
                         if(code == json.decode(response.body)['body'].toString().substring(5)){
                           final snackBar = SnackBar(
                               duration: Duration(seconds: 3),
                               backgroundColor: Colors.green
                               ,content: Text('Correct OTP'
                             ,style: TextStyle(fontWeight: FontWeight.bold),)
                           );

                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
                           Route route = MaterialPageRoute(builder: (context) => HomeScreen());
                           Navigator.pushReplacement(context, route);
                         }
                       },
                       onCodeChanged: (code) {
                         if (code!.length == 6)   {
                           final snackBar = SnackBar(
                               duration: Duration(seconds: 3),
                               backgroundColor: Colors.green
                               ,content: Text('Correct OTP'
                             ,style: TextStyle(fontWeight: FontWeight.bold),)
                           );
                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
                           Route route = MaterialPageRoute(builder: (context) => HomeScreen());
                           Navigator.pushReplacement(context, route);
                           FocusScope.of(context).requestFocus(FocusNode());

                         }
                       },
                     ),
                   )
               );
             }
             else return CircularProgressIndicator();
            },)
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(OTPScreen oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

}