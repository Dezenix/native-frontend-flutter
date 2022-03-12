import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class Resource{
  final Status status;
  Resource({required this.status});
}

enum Status {
  Success,
  Error,
  Cancelled
}

Future<Resource?> FacebookLoginAuth() async {
  try {

    final result = await FacebookAuth.instance.login();

    switch (result.status) {
      case LoginStatus.success:

        final AuthCredential facebookCredential =
        FacebookAuthProvider.credential(result.accessToken!.token);
        await FirebaseAuth.instance.signInWithCredential(facebookCredential);
        final userData = await FacebookAuth.instance.getUserData();
        print("email : ${userData['email']}");
        await FirebaseFirestore.instance.collection("users")
            .add(
            {'email': userData['email']}
        );
        return Resource(status: Status.Success);
      case LoginStatus.cancelled:
        return Resource(status: Status.Cancelled);
      case LoginStatus.failed:
        return Resource(status: Status.Error);
      default:
        return null;
    }
  } on FirebaseAuthException catch (e) {
    throw e;
  }
}