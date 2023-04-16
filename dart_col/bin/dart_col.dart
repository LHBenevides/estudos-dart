//import 'package:dart_col/dart_col.dart' as dart_col;

import 'transporte.dart';
import 'viagem.dart';

void main() {
  //escolherMeioTransporte(Transporte.aviao);

  // List<String> destinos = [];
  // String destino = "Rio de Janeiro";
  // destinos.add(destino);
  // print(destinos);

  // registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  // registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  // registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  //print(registrosVisitados);

  // Map<String,double> registarPrecos = {};
  // registarPrecos["São Paulo"] = 1200;
  // registarPrecos["Rio de Janeiro"] = 1500;
  // registarPrecos["São Paulo"] = 1900;
  // registarPrecos.remove("São Paulo");

  //print(registarPrecos);

  //var numero = 7.1;//Não muda o type em tempo de execução
  // dynamic numero = 7.1;//Muda o type em tempo de execução
  // numero = "Muda";
  // print(numero.runtimeType);

  // Viagem firstTravel = Viagem();
  // firstTravel.dinheiro; //a instancia acessa os elemetos dentro do escoop da classe
  // Viagem.codTrabalho; //o codTrabalho por ser um elemeto estatico permite acessar direto da classe sem precisar instaciar

  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  viagemMaio.visitar("São Paulo");
  viagemMaio.visitar("São Paulo");
  viagemMaio.registrarPrecoVisita("São Paulo", 1700);
  print(viagemMaio.consultarTotalLocaisVisitados);
  print(viagemMaio.registrosVisitados);
  print(viagemMaio.registarPrecos);
  viagemMaio.alterarLocaisVisitados = 100;
  print(viagemMaio.consultarTotalLocaisVisitados);


}


// Set<String> registrarDestinos(String destino, Set<String> data){
//   data.add(destino);
//   return data;
// }

// void escolherMeioTransporte(int locomocao) {
//   if (locomocao == 0) {
//     print("Vou de CARRO para aventura!");
//   } else if (locomocao == 1) {
//     print("Vou de CARRO para aventura!");
//   } else {
//     print("Vou para aventura!");
//   }
// }




