import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cardCuidado(String title, String body) {
  return Padding(
    padding: EdgeInsets.all(8),
    child: Card(
      color: Colors.green,
      child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                body,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Enviado por: MedCasa",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Referência: http://www.saude.gov.br/saude-de-a-z/diabetes",
                style: TextStyle(color: Colors.white),
              ),
            ],
          )),
    ),
  );
}
