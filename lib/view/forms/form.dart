

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/forms/forms_widgets.dart';

class FormUnique extends GetWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
         title: titleForm(),
         centerTitle: true,
         backgroundColor: Colors.green,
        ),
        body: ListView(
          children: buildPerguntas(),
        ),
      ));
  }

}