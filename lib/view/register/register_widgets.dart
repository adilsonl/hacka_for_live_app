import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/mainPage/mainPage.dart';
import 'package:hacka_for_life/view/register/register_controller.dart';

final RegisterPageController controller = Get.put(RegisterPageController());

Widget clipPath() {
  return ClipPath(
    clipper: WaveClipperTwo(),
    child: Container(
      height: 120,
      color: Colors.green,
    ),
  );
}

Widget emailTextField() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8, ),
    child: TextField(
      onChanged: (_value) {
        controller.email.value= _value;
      },
      style: TextStyle(color: Colors.green),
      decoration: InputDecoration(
        labelText: "E-mail",
        labelStyle: TextStyle(color: Colors.green),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget dataTextField() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8, ),
    child: TextField(
      onChanged: (_value) {
        controller.dataNasc.value = _value;
      },
      style: TextStyle(color: Colors.green),
      decoration: InputDecoration(
        labelText: "Data de Nascimento",
        labelStyle: TextStyle(color: Colors.green),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget nomeTextField() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8, ),
    child: TextField(
      onChanged: (_value) {
        controller.nome.value = _value;
      },
      style: TextStyle(color: Colors.green),
      decoration: InputDecoration(
        labelText: "Nome",
        labelStyle: TextStyle(color: Colors.green),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget passTextField() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    child: Obx(
      () => TextField(
        obscureText: controller.obscureText.value,
        onChanged: (_value) {
          controller.password.value = _value;
        },
        style: TextStyle(color: Colors.green),
        decoration: InputDecoration(
          labelText: "Senha",
          labelStyle: TextStyle(color: Colors.green),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: () {
              controller.iconChange();
            },
            icon: Obx(
              () => Icon(
                controller.visibilityIcon.value,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget registerButton() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    child: Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          "Registrar",
          style: TextStyle(color: Colors.green),
        ),
        color: Colors.white,
        onPressed: () async {
          print("dsaf");
          bool teste = await controller.register(); 
          if(teste)
          Get.off(MainPage());
        },
      ),
    ),
  );
}

Widget radioButton() {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child:Obx(()=> Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Radio(
            value: "Masculino",
             groupValue: controller.sexo.value,
            onChanged: (_value) {
              controller.sexo.value = _value;
              print(_value);
            },
          ),
          Text(
            'Masculino',
            style: new TextStyle(fontSize: 16.0),
          ),
          Radio(
            value: "Feminino",
            groupValue: controller.sexo.value,
            onChanged: (_value) {
              controller.sexo.value = _value;
            },
          ),
          Text(
            'Feminino',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Radio(
            value: 'Outro',
            groupValue: controller.sexo.value,
            onChanged: (_value) {
              controller.sexo.value = _value;
            },
          ),
          Text(
            'Outro',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      )));
}

