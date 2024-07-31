import 'dart:io';

void main() {
  //String endrecoCompleto = 'Rua Hiroaki Torigoi, 182 - Bangu / RJ';

  print('Digite seu nome:');
  String nomeCliente = stdin.readLineSync() as String;

  print('"Prezado(a), $nomeCliente. Seja muito bem-vindo(a) à nossa loja."');
  //print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');
  //print('Estamos localizados na $endrecoCompleto. Venha nos visitar!');
  
  print('1 - Ver ofertas de Produtos.');
  print('2 - Ver ofertas de Serviços.');
  var menuLeitura = stdin.readLineSync() as String;
  int menu = int.parse(menuLeitura);

  switch(menu){
    case 1: print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
      break;
    case 2: print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
      break;
    default:
      print('Opção inválida.');  
  }


}
