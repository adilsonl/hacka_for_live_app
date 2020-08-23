import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/user.dart';

final UserObs userx = Get.put(UserObs());

class ExameController extends GetxController {
  var listExams = [].obs;

  uploadImagens() {
    print(userx.uid.value);
    listExams.forEach((element) {
      StorageUploadTask task = FirebaseStorage.instance
          .ref()
          .child("${userx.uid.value}/exames/" + DateTime.now().toString())
          .putFile(element);
      task.onComplete.then((value) {});
    });
  } 
  clearExames(){
    listExams.clear();
  }

}
