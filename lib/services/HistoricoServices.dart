
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/user.dart';
final UserObs user = Get.put(UserObs());

final firestore = Firestore.instance;
class HistoricoServices{

    static Future<List> getResults()async{
      List retorno =[];
      var docs =  await firestore.collection("exames").where("uid",isEqualTo:user.uid.value).getDocuments();
      docs.documents.forEach((element) {
          retorno.add(element);
      });
      return retorno;
    }
}