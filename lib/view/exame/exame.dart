

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/exame/exame_wdigets.dart';

class ExamePage extends GetWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Exames"),
        centerTitle: true,
        backgroundColor: Colors.green,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textSelecionar(),
            selectButton(),
            textSelecionados(),
            sendButton()
            
          ],
        ),
      )

    ));
  }
}