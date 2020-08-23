class Pergunta{
    String resposta;
    String pergunta;

    Pergunta(this.pergunta,this.resposta);

    Pergunta.fromJSON(Map<String,dynamic> dados){
      resposta= dados["Resposta"];
      pergunta = dados['Pergunta'];
    }

    Map<String,dynamic> toMap(){
      return <String,dynamic>{
        "Resposta":resposta,
        "Pergunta":pergunta
      };
    }

}