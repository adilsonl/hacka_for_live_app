import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hacka_for_life/model/user.dart';
var firestore = Firestore.instance;
class UserServices{

  static Future addUser(User user)async{
      try {
        await firestore.collection("users").add(user.toMap());
      } catch (e) {
      }
  }
}