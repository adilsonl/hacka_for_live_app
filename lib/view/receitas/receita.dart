import 'package:flutter/material.dart';
import 'package:hacka_for_life/view/receitas/receita_widgets.dart';

class ReceitaPage extends StatefulWidget {
  @override
  _ReceitaPageState createState() => _ReceitaPageState();
}

class _ReceitaPageState extends State<ReceitaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Receitas"),
          centerTitle: true,
          backgroundColor: Colors.green,
           actions: [
              Icon(Icons.search)
            ],
        ),
        body: Column(
          children: [
            receitaTile("Receita Y"),
            receitaTile("Receita X"),
            receitaTile("Receita Z"),
          ],
        ),
      ),
    );
  }
}