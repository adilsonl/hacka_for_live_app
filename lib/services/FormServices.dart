import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/formulario.dart';
import 'package:hacka_for_life/model/user.dart';

final firestore = Firestore.instance;
final UserObs user = Get.put(UserObs());

class FormServices {
  static Future<List> getForms() async {
    List<Formulario> retorno = [];
    var docs = await firestore
        .collection("formularios")
        .where("paciente", isEqualTo: user.uid.value)
        .getDocuments();
    if (docs.documents.isNotEmpty) {
      docs.documents.forEach((element) {
        retorno.add(Formulario.fromJSON(element.data, element.documentID));
      });
    }
    return retorno;
  }

  static Future<bool> updateForm(Formulario form) async {
    bool retorno = false;
    try {
      await firestore
          .collection("formularios")
          .document(form.id)
          .updateData(form.toMap());
      retorno = true;
    } catch (e) {
      print(e);
    }

    return retorno;
  }
}
