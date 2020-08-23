
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/hist/historico.dart';

class HistoricoList extends GetWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
          title: Text("Resultados"),
          centerTitle: true,
          backgroundColor: Colors.green,
           actions: [
              Icon(Icons.search)
            ],
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(8),
            child:Card(
              color: Colors.green,
              child: Padding(padding: EdgeInsets.all(8),
              child:  ListTile(
              title: Text("Exame Y", style: TextStyle(color:Colors.white),),
              leading: Icon(Icons.layers,color: Colors.white,),
              onTap: (){
                Get.to(Historico());
              },
            ),),
            ),)
          ],
        ),

      ),
    );
  }

}