import 'package:flutter/material.dart';
import 'package:hacka_for_life/view/hist/historico_wdigets.dart';

class Historico extends StatefulWidget {
  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Resultado"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
                Padding(
                padding: EdgeInsets.all(8),
                child: Text("Exemplo 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: graf1(context),
              ),
              cardInfo(200, 140, 163),
               Padding(
                padding: EdgeInsets.all(8),
                child: Text("Exemplo 2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: graf2(context),
              ),
              cardInfo(250, 150, 179),
            ],
          ),
        ),
      ),
    );
  }
}
