

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController{

  var email = ''.obs;
  var password = ''.obs;
  var visibilityIcon = Icons.visibility.obs;
  var obscureText = true.obs;
  var sexo = ''.obs;
  var dataNasc = ''.obs;
  
  bool _secret = true;

  iconChange(){
    _secret = !_secret;
    obscureText.value = _secret;
    visibilityIcon.value = _secret ? Icons.visibility : Icons.visibility_off;
  }


}