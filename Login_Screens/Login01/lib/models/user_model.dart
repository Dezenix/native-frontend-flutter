import 'package:flutter/cupertino.dart';

class UserModel{
  String? fullName;
  String? email;
  String? password;
  String? phone_no;
  String? uid;

  UserModel({@required this.fullName,@required this.email,@required this.password,@required this.phone_no,@required this.uid});
  Map toJson(){
    return {};
  }
}
