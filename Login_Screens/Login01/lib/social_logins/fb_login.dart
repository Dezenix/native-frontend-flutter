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

void facebookCredentialandFirebaseInit(final loginReq) async {

  final AuthCredential facebookCredential =
  FacebookAuthProvider.credential(loginReq.accessToken!.token);
  await FirebaseAuth.instance.signInWithCredential(facebookCredential);

}

Future<Resource?> facebookLoginAuth() async {
  try {

    final loginReq = await FacebookAuth.instance.login();

    facebookCredentialandFirebaseInit(loginReq);

    switch (loginReq.status) {

      case LoginStatus.success:

        final userData = await FacebookAuth.instance.getUserData();

        print("userData : ${userData}");

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