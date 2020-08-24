import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/user.dart';
import 'package:hacka_for_life/view/mainPage/mainPage.dart';

import 'login_controller.dart';

final LoginPageController controller = Get.put(LoginPageController());
final UserObs user = Get.put(UserObs());



Widget clipPath() {
  return ClipPath(
    clipper: WaveClipperTwo(),
    child: Container(
      height: 120,
      color: Colors.green,
    ),
  );
}

Widget wupIcon(BuildContext context) {
  return Center(
    child: Image.asset(
      'images/Logo.png',
      height: MediaQuery.of(context).size.height * 0.2,
    ),
  );
}

Widget emailTextField() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: TextField(
      onChanged: (_value) {
        controller.email.value=_value;
      },
      style: TextStyle(color:Colors.green),
      decoration: InputDecoration(
        labelText: "E-mail",
        labelStyle: TextStyle(color:Colors.green),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget passTextField() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    child: Obx(
      () => TextField(
        obscureText: controller.obscureText.value,
        onChanged: (_value) {
          controller.password.value = _value;
        },
        style: TextStyle(color: Colors.green),
        decoration: InputDecoration(
          labelText: "Senha",
          labelStyle: TextStyle(color: Colors.green),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: () {
              controller.iconChange();
            },
            icon: Obx(
              () => Icon(
                controller.visibilityIcon.value,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget loginButton() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    child: Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.green,
        onPressed: () async {
         String retorno = await controller.login();
         if(retorno== "Aprovado")
            Get.off(MainPage());
        },
      ),
    ),
  );
}

Widget buttonDivider() {
  return Divider(
    height: 10,
  );
}

Widget registerButton(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    child: Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          "Registrar",
          style: TextStyle(color: Colors.green),
        ),
        color: Colors.white,
        onPressed: () {
          Get.toNamed('/register');
        },
      ),
    ),
  );
}