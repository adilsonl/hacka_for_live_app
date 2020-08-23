

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/user.dart';
import 'package:hacka_for_life/view/mainPage/mainPage_widgets.dart';
final UserObs user = Get.put(UserObs());

class MainPage extends GetWidget{

 @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Obx(()=>Text(user.nome.value)),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
         cardExame(context),
         cardForm(context),
         cardHist(context),
         cardReceita(context),
         cardDicas(context),
         cardAjuda(context)
     
        ],
        ),
    ));
  }

  
}