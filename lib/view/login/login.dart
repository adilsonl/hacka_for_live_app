import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/login/login_widgets.dart';
class LoginPage extends GetWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            clipPath(),
            wupIcon(context),
            emailTextField(),
            passTextField(),
            loginButton(),
            buttonDivider(),
            registerButton(context)
          ],
        ),
      )
    ));
  }
}