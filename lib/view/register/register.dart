import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/register/register_widgets.dart';

class RegisterPage extends GetWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            clipPath(),
            emailTextField(),
            nomeTextField(),
            dataTextField(),
            passTextField(),
            radioButton(),
            termosdeUso(),
            registerButton()
          ],
        ),
      )
    ));
  }
}