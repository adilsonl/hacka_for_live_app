

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/exame/exame_controller.dart';

final ExameController controller = Get.put(ExameController());


Widget selectButton(){
  return RaisedButton(
        color: Colors.green,
    child: Icon(Icons.file_upload,color: Colors.white,),
    onPressed:()async{
       List<File> files = await FilePicker.getMultiFile(
          type: FileType.custom,
          allowedExtensions: [ 'pdf',],
        );
        files.forEach((element) { 
          controller.listExams.add(element);
        });
    });
}
Widget textSelecionar(){
  return Text("Selecione os arquivos");
}
Widget textSelecionados(){
  return Obx(()=>Text(
    "Arquivos: ${controller.listExams.length}"
  ));
}

Widget sendButton(){
  return RaisedButton(
    color: Colors.green,
    child: Text("Enviar",style: TextStyle(color: Colors.white,),),
    onPressed: (){
      controller.uploadImagens();
      controller.clearExames();
    });
}