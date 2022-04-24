import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class SearchScreen extends SearchDelegate<String> {

  List<UserModel> users = [
    UserModel(email: "seifibrahim32@gmail.com",fullName:'Seif',password: 's',phone_no: 'aa',uid: "aas"),
    UserModel(email:  'd',fullName:'Ashraf',password: 'Ashraf' ,phone_no: "s",uid:"s"),
    UserModel(email:  'd',fullName:'Ibrahim',password: 'Ibrahim',phone_no: "s",uid:"s")
  ];
  SearchScreen();

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [

    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<UserModel> results = users
        .where((user) {
      if (kDebugMode) {
        print("${query.toLowerCase().contains(user.fullName!.toLowerCase())}");
      }
      return query.toLowerCase().contains(user.fullName!.toLowerCase());
    }).toList();

    if (kDebugMode) {
      print(results);
    }

    return ListView.separated(
        itemBuilder:(context,index)=> Padding(
          padding: const EdgeInsets.only(left:15,right:15,top:6),
          child: InkWell(
            onTap: ()=> {},
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                ),
                SizedBox(width:7),
                Text(
                  "${results[index].fullName}",
                  style: TextStyle(fontFamily: "Arial",fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder:(context,index)=> const Divider(),
        itemCount: results.length
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.separated(
        itemBuilder:(context,index)=> Padding(
          padding: const EdgeInsets.only(left:15,right:15,top:6),
          child: InkWell(
            onTap: ()=> null,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                ),
                SizedBox(width:7),
                Text(
                   "${users[index].fullName}",
                  style: TextStyle(fontFamily: "Arial",fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder:(context,index)=> Divider(),
        itemCount: users.length
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        headline6: theme.textTheme.subtitle1?.copyWith(color: Colors.black),
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        hintStyle: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
        fillColor: Colors.grey[20],
        filled: true,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.grey, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.grey, width: 0),
        ),
      ),
      appBarTheme: theme.appBarTheme.copyWith(
        iconTheme: const IconThemeData(size: 32),
        elevation: 0,
        backgroundColor: Colors.greenAccent,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
    );
  }

  @override
  InputDecorationTheme? get searchFieldDecorationTheme => InputDecorationTheme(
    hintStyle: TextStyle(
      color: Colors.white
    )
  );

  @override
  String? get searchFieldLabel => 'Search....';

  @override
  void showSuggestions(BuildContext context) {
    // TODO: implement showSuggestions
  }

  @override
  Widget buildLeading(BuildContext context) {
     return  IconButton(
       icon: const Icon(Icons.arrow_back),
       onPressed: () {
         close(context,"");
         },
     );
  }

  @override
  // TODO: implement keyboardType
  TextInputType? get keyboardType =>  TextInputType.text;

  @override
  // TODO: implement searchFieldStyle
  TextStyle? get searchFieldStyle => const TextStyle(
      backgroundColor: Colors.blue,
      color: Color(0xBB79E766)
  );

  @override
  // TODO: implement textInputAction
  TextInputAction get textInputAction => TextInputAction.search;

  @override
  // TODO: implement transitionAnimation
  Animation<double> get transitionAnimation => throw UnimplementedError();
  /*
  @override
  PreferredSizeWidget? buildBottom(BuildContext context) {
  }

  @override
  // TODO: implement transitionAnimation
  Animation<double> get transitionAnimation => throw UnimplementedError();
  */
}