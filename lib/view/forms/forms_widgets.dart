import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/services/FormServices.dart';

import 'forms_controller.dart';

final FormController controller = Get.put(FormController());

Widget titleForm() {
  return Obx(() => Text(controller.formulario.value.nome));
}

List<Widget> buildPerguntas() {
  List<Widget> retorno = [];
  controller.formulario.value.perguntas.forEach((element) {
    retorno.add(Padding(padding:  EdgeInsets.symmetric(horizontal: 8,vertical: 8),
    child: Text(
      element.pergunta,
      style: TextStyle(fontSize: 16),
    ),));
    retorno.add(Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        onChanged: (_value) {
         element.resposta = _value;
        },
        style: TextStyle(color: Colors.green),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    ));
  });
  retorno.add(sendForm());
  return retorno;
}

Widget sendForm(){
  return Center(
    child: RaisedButton(
      color: Colors.green,
      child: Text("Enviar",style: TextStyle(color: Colors.white),),
      onPressed: ()async{
        controller.formulario.value.pronto=true;
        FormServices.updateForm(controller.formulario.value);
      }),
  );
}