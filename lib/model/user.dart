import 'package:get/get.dart';

class UserObs{

  var nome = "".obs;
  var email = "".obs;
  var uid = "".obs;
  var sexo = "".obs;
  var dataNasc = "".obs;
  var pros = [].obs;
}

class User{
  String id;
  String nome;
  String email;
  String uid;
  String sexo;
  String dataNasc;
  List pros;

  User(this.nome,this.email,this.uid,{this.dataNasc,this.pros,this.sexo});

  User.fromJSON(Map<String,dynamic> dados,String _id){
    id = _id;
    nome = dados['nome'];
    email = dados['emai'];
    uid = dados['id'];
    sexo = dados['sexo'];
    dataNasc = dados['dataNasc'];
    pros = dados['pros'];
  }

  Map<String,dynamic> toMap(){
    return <String,dynamic>{
      "nome":nome,
      "email":email,
      "uid" : uid,
      "sexo": sexo,
      "dataNasc":dataNasc,
      'pros':pros
    };
  }


}