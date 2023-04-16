import 'package:teste/teste.dart' as teste;

// void main(List<String> arguments) {
//   print('Hello world: ${teste.calculate()}!');
// }

void main() {
  // variaveis

  int idade = 26;
  double populacaoMundial = 8000000000;
  double populacaoMundialExpo = 8e9;
  double altura = 1.84;
  bool geek = (idade == altura);
  const String nome = 'Regulus';
  final String sobrenome = 'Star';
  bool maiorDeIdade;
  int energia = 100;

  //condicionais
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  //loops

  //for(int i=0; i<5;i++){
  //print('Concluir $i Voltas');
  //}

  //while(energia > 0){
  //print('mais uma repetição');
  //energia = energia - 10;
  //}

  do {
    print('mais uma repetição1');
    energia = energia - 10;
  } while (energia > 0);

  //listas
  List<String> listaNomes = ['Ricardo', 'Carlos', 'Andre', 'Monica'];
  List<dynamic> pessoa = [27, 1.84, true, 'Regulus'];
  print(maiorDeIdade);
}
