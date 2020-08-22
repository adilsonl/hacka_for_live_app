

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/mainPage/mainPage_widgets.dart';

class MainPage extends GetWidget{

 @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Nome"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          cardExame(context),
         cardHist(context),
         cardReceita(context),
         cardLab(context),
         cardFarm(context),
         cardForm(context)
        ],
        ),
    ));
  }

  
}