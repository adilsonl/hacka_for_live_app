import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/services/UserServices.dart';

class LoginPageController extends GetxController{


  var email = ''.obs;
  var password = ''.obs;
  var visibilityIcon = Icons.visibility.obs;
  var obscureText = true.obs;

  bool _secret = true;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  iconChange(){
    _secret = !_secret;
    obscureText.value = _secret;
    visibilityIcon.value = _secret ? Icons.visibility : Icons.visibility_off;
  }

  

   Future login() async{
    if(email.value.isNullOrBlank || password.value.isNullOrBlank) {
      return 'Senha ou email em branco';
    }else if(!email.value.contains('@') || !email.value.contains('.com')){
      return 'Email não é valido';
    }else if(password.value.length < 5){
      return 'Senha muito curta';
    } else{
      try {
        AuthResult _authUser = await _auth.signInWithEmailAndPassword(email: email.value, password: password.value);
        UserServices.login(_authUser.user.uid);
        return 'Aprovado';
      }catch (e){
        return 'Senha errada';
      }
    }
  } 
}