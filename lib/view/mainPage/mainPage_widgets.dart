import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/formulario.dart';
import 'package:hacka_for_life/services/FormServices.dart';
import 'package:hacka_for_life/view/forms/forms.dart';
import 'package:hacka_for_life/view/hist/historicoList.dart';

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
  return GestureDetector(
    child:  Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.show_chart,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Histórico",style: TextStyle(color:Colors.white))
      ],
    ),
  ),
  onTap: (){
    Get.to(HistoricoList());
  },
  );
}

Widget cardReceita(BuildContext context) {
  return Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.book,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Receitas",style: TextStyle(color:Colors.white))
      ],
    ),
  );
}

Widget cardAjuda(BuildContext context) {
  return Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.help,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Ajuda",style: TextStyle(color:Colors.white))
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

Widget cardDicas(BuildContext context) {
  return Card(
    color: Colors.green,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.local_hospital,
          size: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white
        ),
        Text("Cuidados",style: TextStyle(color:Colors.white))
      ],
    ),
  );
}
