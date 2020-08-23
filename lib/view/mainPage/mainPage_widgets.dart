import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/formulario.dart';
import 'package:hacka_for_life/services/FormServices.dart';
import 'package:hacka_for_life/view/forms/forms.dart';

Widget cardExame(BuildContext context) {
  return GestureDetector(
    child: Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.file_upload,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Enviar Exame",style: TextStyle(color:Colors.white),)
      ],
    ),
  ),
  onTap: (){
    Get.toNamed("/exame");
  },
  );
}

Widget cardHist(BuildContext context) {
  return Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.edit,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Histórico",style: TextStyle(color:Colors.white))
      ],
    ),
  );
}

Widget cardReceita(BuildContext context) {
  return Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.edit,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Receitas",style: TextStyle(color:Colors.white))
      ],
    ),
  );
}

Widget cardLab(BuildContext context) {
  return Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.edit,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Lab",style: TextStyle(color:Colors.white))
      ],
    ),
  );
}

Widget cardForm(BuildContext context) {
  return GestureDetector(
    child:  Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.format_list_numbered,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Formulários",style: TextStyle(color:Colors.white))
      ],
    ),
  ),
  onTap: ()async{
    List<Formulario> list = await FormServices.getForms();
    Get.to(Forms(list));
  },
  );
}

Widget cardFarm(BuildContext context) {
  return Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.edit,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Farmacias",style: TextStyle(color:Colors.white))
      ],
    ),
  );
}
