import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emartapp/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../consts/firebase_const.dart';

class AuthController extends GetxController{

  //login method
  Future<UserCredential?> loginMetthod({email , password , context}) async{
    UserCredential? userCredential;

    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);

    }

    on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //signupmethod
  Future<UserCredential?> signUpMethod({email , password , context}) async{
    UserCredential? userCredential;

    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);

    }

    on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //store user data
  storeUserData({name , password , email}) async{
    DocumentReference store  = await firestore.collection(usersCollection).doc(currentUser!.uid);
    store.set({'name': name , 'password': password , 'email': email , 'imageUrl':''});
  }

  //signout method
 signOutMethod(context) async {
    try{
      await auth.signOut();
    }
    catch (e){
      VxToast.show(context, msg: e.toString());
    }


 }
}