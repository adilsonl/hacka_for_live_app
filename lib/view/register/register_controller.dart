import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/user.dart';
import 'package:hacka_for_life/services/UserServices.dart';
final UserObs userx = Get.put(UserObs());

class RegisterPageController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var nome = "".obs;
  var visibilityIcon = Icons.visibility.obs;
  var obscureText = true.obs;
  var sexo = ''.obs;
  var dataNasc = ''.obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _secret = true;

  iconChange() {
    _secret = !_secret;
    obscureText.value = _secret;
    visibilityIcon.value = _secret ? Icons.visibility : Icons.visibility_off;
  }

  Future<bool> register()async {
    try {
      if (email.value.isNotEmpty &&
          email.value.isEmail &&
          password.value.length > 6) {
        AuthResult result = await _auth.createUserWithEmailAndPassword(
            email: email.value, password: password.value);
        User user = User(nome.value, email.value,result.user.uid,dataNasc: dataNasc.value,pros: [],sexo: sexo.value);
        
        await UserServices.addUser(user);
        await UserServices.login(user.uid);
        return true;
      }else{
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
