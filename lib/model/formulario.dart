
import 'package:hacka_for_life/model/pergunta.dart';

class Formulario{
  String id;
  String nome;
  String autor;
  String paciente;
  String data;
  List perguntas;
  bool pronto;

  Formulario({this.nome,this.autor,this.paciente,this.data,this.perguntas,this.id,this.pronto});

  Formulario.fromJSON(Map<String,dynamic> dados,String _id){
    id = _id;
    nome = dados['nome'];
    autor = dados['autor'];
    paciente = dados['paciente'];
    data = dados['data'];
    pronto = dados["pronto"];
    perguntas =[];
    if(dados['perguntas']!=null){
      List pergs =  dados['perguntas'];
        pergs.forEach((element) {
            perguntas.add(Pergunta.fromJSON(element));
        });
    }
    
  }

  Map<String,dynamic> toMap(){
    List<Map<String,dynamic>> lista =[];
    perguntas.forEach((element) {
        lista.add(element.toMap());
    });
    return <String,dynamic>{
      "nome":nome,
      "autor":autor,
      "paciente":paciente,
      "data":data,
      "perguntas":lista,
      "pronto":pronto
    };
  }
}