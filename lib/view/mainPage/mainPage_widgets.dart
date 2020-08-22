import 'package:flutter/material.dart';

Widget cardExame(BuildContext context) {
  return Card(
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
        Text("Formulários",style: TextStyle(color:Colors.white))
      ],
    ),
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
