import 'dart:io';

//Você deve alterar o sistema para que ele funcione para N clientes e não mais apenas 18 vezes.

//Ao final da consulta de um cliente, o sistema deve apresentar os itens de menu acrescido da opção 10 – Sair.

//Ao digitar a opção 10, o sistema deve sair do programa e exibir quantos clientes usaram o sistema naquele dia.

void main() {
  //int contadorCliente = 0;
  var novoAtendimento = 'S';
  int totalClientes = 0;
  var totalOrcamentos = 0;

  while (novoAtendimento.toUpperCase() == 'S') {
    print('Deseja um novo atentimento? S ou N.');
    novoAtendimento = stdin.readLineSync() as String;

    //valida a resposta de novo atendimento
    if (novoAtendimento.toUpperCase() == 'S') {
      print('Digite 1 se você for cliente e 2 para funcionário');
      var identificacaoLeitura = stdin.readLineSync() as String;
      int identificacao = int.parse(identificacaoLeitura);

      //validacao de usuarios
      if (identificacao == 1) {
        print('Digite seu nome:');
        String nomeCliente = stdin.readLineSync() as String;

        print(
            '"Prezado(a), $nomeCliente. Seja muito bem-vindo(a) à nossa loja."');
        //print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');
        //print('Estamos localizados na $endrecoCompleto. Venha nos visitar!');

        print('1 - Ver ofertas de Produtos.');
        print('2 - Ver ofertas de Serviços.');
        print('3 - Ver ofertas de roupas.');
        print('4 - Ver novos serviços.');
        print('5 - Promoção I 10% de desconto.');
        print('6 - Promoção II 20% de desconto.');
        print('10 – Sair.');

        var menuLeitura = stdin.readLineSync() as String;
        int menu = int.parse(menuLeitura);

        switch (menu) {
          case 1:
            print(
                'Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
            break;
          case 2:
            print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
            break;
          case 3:
            print('Roupas em oferta - Capa de chuva R\$59,99');
            break;
          case 4:
            print(
                'Novos serviços oferecidos: Hidratação de pelo R\$ 39,99 | Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99.');
            break;
          case 5:
            print(
                'Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho.');
            break;
          case 6:
            print(
                'Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total.');
            break;
          case 10:
            print('O total de clientes atendidos foi $totalClientes.');
            break;
          default:
            print('Opção inválida.');
        }
        totalClientes++;
        
      } else if (identificacao == 2) {
        print('Digite o código de acesso:');
        String codigoAcessoLeitura = stdin.readLineSync() as String;
        String codigoAcesso = codigoAcessoLeitura.toLowerCase();

        if (codigoAcesso == 'cuidapetrestrito') {
          //tabela de precos
          double racaoCanin15 = 280.00;
          double banhoTosa = 54.00;
          double tosaHigienica = 10.99;
          double hidratacao = 39.99;

          double precoTotal = 0.00;
          double desconto = 0.00;

          print('Você estea no mode de  ordem de serviço.');

          print(
              'O cliente comprou ração Ração Royal Canin Indor 7,5kg? Digite S ou N.');
          var resposta1leitura = stdin.readLineSync() as String;
          String resposta1 = resposta1leitura.toUpperCase();

          print('O cliente solicitou banho e tosa? Digite S ou N.');
          var resposta2leitura = stdin.readLineSync() as String;
          String resposta2 = resposta2leitura.toUpperCase();

          print('O cliente solicitou tosa higienica? Digite S ou N.');
          var resposta3leitura = stdin.readLineSync() as String;
          String resposta3 = resposta3leitura.toUpperCase();

          print('O cliente solicitou hidratação? Digite S ou N.');
          var resposta4leitura = stdin.readLineSync() as String;
          String resposta4 = resposta4leitura.toUpperCase();

          if (resposta1 == 'S') {
            precoTotal = precoTotal + racaoCanin15;
          }

          if (resposta2 == 'S') {
            precoTotal = precoTotal + banhoTosa;
          }

          if (resposta3 == 'S') {
            precoTotal = precoTotal + tosaHigienica;
          }

          if (resposta4 == 'S') {
            precoTotal = precoTotal + hidratacao;
          }

          if (resposta1 == 'S' && resposta2 == 'S') {
            desconto = (racaoCanin15 + banhoTosa) * 0.10;
            precoTotal = precoTotal - desconto;
          }

          if (resposta2 == 'S' && resposta4 == 'S') {
            desconto = (banhoTosa + hidratacao) * 0.20;
            precoTotal = precoTotal - desconto;
          }

          //falta aplicar os descontos

          print(
              'O valor total do serviço é R\$${precoTotal.toStringAsFixed(2)}');

          totalOrcamentos++;
        } else {
          print('Digite seu nome:');
          String nomeCliente = stdin.readLineSync() as String;

          print(
              '"Prezado(a), $nomeCliente. Seja muito bem-vindo(a) à nossa loja."');
          //print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');
          //print('Estamos localizados na $endrecoCompleto. Venha nos visitar!');

          print('1 - Ver ofertas de Produtos.');
          print('2 - Ver ofertas de Serviços.');
          print('3 - Ver ofertas de roupas.');
          print('4 - Ver novos serviços.');
          print('5 - Promoção I 10% de desconto.');
          print('6 - Promoção II 20% de desconto.');
          print('10 – Sair.');

          var menuLeitura = stdin.readLineSync() as String;
          int menu = int.parse(menuLeitura);

          switch (menu) {
            case 1:
              print(
                  'Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
              break;
            case 2:
              print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
              break;
            case 3:
              print('Roupas em oferta - Capa de chuva R\$59,99');
              break;
            case 4:
              print(
                  'Novos serviços oferecidos: Hidratação de pelo R\$ 39,99 | Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99.');
              break;
            case 5:
              print(
                  'Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho.');
              break;
            case 6:
              print(
                  'Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total.');
              break;
            case 10:
              print('O total de clientes atendidos foi $totalClientes.');
              break;
            default:
              print('Opção inválida.');
          }
          totalClientes++;
        }
      } else {
        print('Opção inválida.');
      }
    }
  }

  if (novoAtendimento.toUpperCase() != 'S') {
    print('O total de clientes atendidos foi $totalClientes.');
    print('O total de orcamentos foi $totalOrcamentos.');
  }

  

  //for (contadorCliente = 0; contadorCliente < 18; contadorCliente++) {
  //}
}
