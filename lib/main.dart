import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacka_for_life/view/exame/exame.dart';
import 'package:hacka_for_life/view/login/login.dart';
import 'package:hacka_for_life/view/register/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      getPages: [
        GetPage(name: "/", page: ()=>LoginPage()),
        GetPage(name: "/register", page: ()=>RegisterPage()),
        GetPage(name: '/exame', page: ()=>ExamePage())
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: Text("sf"),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
