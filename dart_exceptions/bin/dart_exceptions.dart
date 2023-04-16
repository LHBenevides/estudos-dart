import 'dart:io';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety(){
  Account? myAccount;

  //Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if(randomNumber <= 5) {
    myAccount = Account(name: "Sirius", balance: 1000, isAuthenticated: true);
    }
  print(myAccount.runtimeType);
  //print(myAccount!.balance);
  // if(myAccount != null){
  //   print(myAccount.balance);
  // }
  print(myAccount != null ? myAccount.balance : "Conta Nula");
  print(myAccount?.balance);

}

void testingNullSafetyAccount(){
  Account? myAccount = Account(name: "Sirius", balance: 1000, isAuthenticated: true);

  //Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if(randomNumber <= 5) {
    myAccount.createdAt = DateTime.now();
  }
  print(myAccount.createdAt);
  //print(myAccount.createdAt.day);
  print(myAccount.createdAt != null ? myAccount.createdAt!.day : 'Data não criada');
}


void main() {
  //testingNullSafety();
  testingNullSafetyAccount();
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  //Account accountTest = Account(name: "", balance: -1, isAuthenticated: true);
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 700, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  bankController.addAccount(
      id: "Regulus",
      account:
          Account(name: "Regulus Star", balance: 800, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Regulus", idReceiver: "Ricarth", amount: 1000);

    if (result) {
      print("Operação realizada com sucesso!");
    }

  } on SenderIdInvalidException catch (e) {
    print(e);
    print("o ID '${e.idSender}' do remetente não é um ID válido.");
  } on ReceiverIdInvalidException catch (e) {
    print("o ID '${e.idReceiver}' do destinatario não é um ID válido.");
    print(e);
  } on SenderNotAuthenticatedException catch (e) {
    print("o remetente ID '${e.idSender}' não esta autenticado.");
    print(e);
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(
        "A Conta ID '${e.idSender}' não possuiu saldo suficiente para realizar a operação. Seu saldo é ${e.senderBalance}, e o valor transferido é ${e.amount}");
    print(e);
  }on Exception {
    print("Algo deu errado!");
  }
}
