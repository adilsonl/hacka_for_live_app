

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/model/formulario.dart';
import 'package:hacka_for_life/view/forms/forms_controller.dart';

import 'form.dart';

final FormController controller = Get.put(FormController());

class Forms extends StatefulWidget {
  final List<Formulario> lista;
  Forms(this.lista);
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Formularios"),
            centerTitle: true,
            backgroundColor: Colors.green,
            actions: [
              Icon(Icons.search)
            ],
          ),
          body: ListView.builder(
            itemCount: widget.lista.length,
            itemBuilder: (context,i){
              return Card(
                child: ListTile(
                  title: Text(widget.lista[i].nome),
                  leading: Icon(Icons.format_list_numbered),
                  onTap: (){
                    controller.formulario.value = widget.lista[i];
                    Get.to(FormUnique());
                  },
                ),
              );
            },),
        ),
    );
  }
}