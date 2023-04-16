import 'transporte.dart';

class Viagem{
  static String codTrabalho = "DJANAS12"; // Static armazena dados na propria estrutura da classe
  double  dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String,dynamic> registarPrecos = {};

  int _totalLocaisVisitados = 0; // o Underline torna a propriedade Privada

  Viagem({required this.locomocao});

  printCodigo(){
    print(codTrabalho);
  }

  void escolherMeioTransporte(Transporte locomocao) {
    // if(locomocao == Transporte.carro){
    //   print("Vou de CARRO para aventura!");
    // }else if(locomocao == Transporte.bike){
    //   print("Vou de BIKE para aventura!");
    // }else{
    //   print("Vou para aventura!");
    // }
    switch (locomocao) {
      case Transporte.carro:
        print("Vou de CARRO para aventura!");
        break;
      case Transporte.trem:
        print("Vou de TREM para aventura!");
        break;
      default:
        print("Vou para aventura!");
    }
  }

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados++;
  }

  void registrarPrecoVisita(String local, dynamic preco){
    registarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{ //Get permite uma consulta controlada de um elemeto privado
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQtd){
    if(novaQtd < 10){
      _totalLocaisVisitados = novaQtd;
    }else{
      print("Numero de viagens invalido");
    }
  }
}