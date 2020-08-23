import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/cuidado/cuidados_widgets.dart';

class CuidadoPage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Cuidados"),
        centerTitle: true,
        backgroundColor: Colors.green,
         actions: [
              Icon(Icons.search)
            ],        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            cardCuidado("O que é diabetes?",
                "Diabetes é uma doença crônica na qual o corpo não produz insulina ou não consegue empregar adequadamente a insulina que produz.\n"),
            cardCuidado("O que é insulina? ",
                '''É um hormônio que controla a quantidade de glicose no sangue. O corpo precisa desse hormônio para utilizar a glicose, que obtemos por meio dos alimentos, como fonte de energia.
Quando a pessoa tem diabetes, no entanto, o organismo não fabrica insulina e não consegue utilizar a glicose adequadamente. O nível de glicose no sangue fica alto -  a famosa hiperglicemia. Se esse quadro permanecer por longos períodos, poderá haver danos em órgãos, vasos sanguíneos e nervos
'''),
            cardCuidado('Quais os tipos mais comuns de diabetes?',
                '''O diabetes mellitus pode se apresentar de diversas formas e possui diversos tipos diferentes. Independente do tipo de diabetes, com aparecimento de qualquer sintoma é fundamental que o paciente procure com urgência o atendimento médico especializado para dar início ao tratamento.'''),
            cardCuidado("Sintomas de diabetes",
                '''Os principais sintomas do diabete são: fome e sede excessiva e vontade de urinar várias vezes ao dia.    
Sintomas do diabetes tipo 1:Fome frequente; Sede constante; Vontade de urinar diversas vezes ao dia; Perda de peso; Fraqueza; Fadiga;  Mudanças de humor; Náusea e vômito.
 
Sintomas do diabetes tipo 2: Fome frequente; Sede constante;  Formigamento nos pés e mãos; Vontade de urinar diversas vezes;  Infecções frequentes na bexiga, rins, pele e infecções de pele;  Feridas que demoram para cicatrizar; Visão embaçada.
''')
          ],
        ),
      ),
    ));
  }
}
