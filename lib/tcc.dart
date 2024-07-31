import 'dart:io';

void main() {
  //String endrecoCompleto = 'Rua Hiroaki Torigoi, 182 - Bangu / RJ';

  print('Digite seu nome:');
  String nomeCliente = stdin.readLineSync() as String;

  print('"Prezado(a), $nomeCliente. Seja muito bem-vindo(a) à nossa loja."');
  print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');
  //print('Estamos localizados na $endrecoCompleto. Venha nos visitar!');

}
