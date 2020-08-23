import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/user.dart';
var firestore = Firestore.instance;

final UserObs user = Get.put(UserObs());
class UserServices{

  static Future addUser(User user)async{
      try {
        await firestore.collection("users").add(user.toMap());
      } catch (e) {
      }
  }

  static Future login(String uid)async{
    try {
      var doc = await firestore.collection("users").where("uid",isEqualTo: uid).getDocuments();
      if (doc.documents.first.data != null){
         user.uid.value = doc.documents.first.data['uid'];
         user.sexo.value = doc.documents.first.data['sexo'];
         user.pros.value = doc.documents.first.data['pros'];
         user.nome.value = doc.documents.first.data['nome'];
         user.dataNasc.value = doc.documents.first.data["dataNasc"];
      }
    } catch (e) {
    }
  }

}