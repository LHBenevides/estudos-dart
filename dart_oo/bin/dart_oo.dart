import 'package:dart_oo/dart_oo.dart' as dart_oo;

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Citrica";
  int diasColheita = 20;
  bool isMadura = funcIsMadura(diasColheita);

  //print(isMadura);
  //mostrarMadura("Uva", 40, cor:"Roxo");
  // int quantosDiasFaltam = funcQuantosDiasMadura(diasColheita);
  // print(quantosDiasFaltam);

  //Posicionais Obrigatorios
  //Nomeados Opicionais
  //Parametros default
  //Modificador "Required"

  // Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasColheita);
  // Fruta fruta02 = Fruta("Uva", 40, "Roxa", "Doce", 20);
  // fruta01.estaMadura(30);
  // print(fruta01.cor);

  //Legumes mandioca = Legumes('Macaxeira', 200, 'Marrom', true);
  //Fruta banana = Fruta('Banana', 75, 'Amarela', 'Doce', 10);
  //banana.mostraAlimento();

  Nozes macadamia = Nozes('Macadamia', 5, 'Marrom', 'Amargo', 45, 20);
  macadamia.fazerMassa();

}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasColheita;
  bool? isMadura;

  //construtor
  Fruta(String nome, double peso, String cor, this.sabor, this.diasColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  //metodos
  estaMadura(int diasParaMadura) {
    isMadura = diasColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasColheita dias, e precisa de $diasParaMadura para comer. Ela eta madura? $isMadura");
  }

  fazerSuco() {
    print('Suco de $nome pronto');
  }

  @override
  assar() {
    // TODO: implement assar
    print('colocar no forno');
  }

  @override
  fazerMassa() {
    print('Misturar ingredientes');
  }

  @override
  separarIgredientes() {
    print('catar $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void mostraAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('o $nome esta cozinhando');
    } else {
      print('Não precisa cozinhar');
    }
  }

  @override
  assar() {
    // TODO: implement assar
    throw UnimplementedError();
  }

  @override
  fazerMassa() {
    // TODO: implement assar
    throw UnimplementedError();
  }

  @override
  separarIgredientes() {
    // TODO: implement assar
    throw UnimplementedError();
  }
}

class Cicricas extends Fruta {
  double nivelAcidez;

  Cicricas(String nome, double peso, String cor, String sabor, int diasColheita,
      this.nivelAcidez)
      : super(nome, peso, cor, sabor, diasColheita);

  existeRefri(bool existe) {
    if (existe) {
      print('Existe refri de $nome');
    } else {
      print('Não existe Refri');
    }
  }
}

class Nozes extends Fruta {
  double porcOleosidade;

  Nozes(String nome, double peso, String cor, String sabor, int diasColheita,
      this.porcOleosidade)
      : super(nome, peso, cor, sabor, diasColheita);

  @override
  fazerMassa() {
    print('tirar a casca');
    return super.fazerMassa();
  }
}

abstract class Bolo {
  separarIgredientes();

  fazerMassa();

  assar();
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int diasRestantes = diasParaMadura - dias;
  return diasRestantes;
}

void mostrarMadura(String nome, int dias, {required String cor}) {
  //? para transformar o parametros em opcional
  if (dias >= 30) {
    print("$nome está madura ");
  } else {
    print("$nome não está madura ");
  }
  if (cor != null) {
    print("A $nome é $cor");
  }
}

bool funcIsMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
