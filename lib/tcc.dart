import 'dart:io';

//Você deve alterar o sistema para que ele funcione para N clientes e não mais apenas 18 vezes.

//Ao final da consulta de um cliente, o sistema deve apresentar os itens de menu acrescido da opção 10 – Sair.

//Ao digitar a opção 10, o sistema deve sair do programa e exibir quantos clientes usaram o sistema naquele dia.

void main() {
  //int contadorCliente = 0;
  var novoAtendimento = 'S';
  int totalClientes = 0;
  var totalOrcamentos = 0;


  //enquanto variavel novoAtendimeto for igual a S
  while (novoAtendimento.toUpperCase() == 'S') {
    //exibir mensagem 
    print('Deseja um novo atentimento? S ou N.');
    //recebe a resposta e armazena na variavel
    novoAtendimento = stdin.readLineSync() as String;

    //valida a resposta de novo atendimento
    if (novoAtendimento.toUpperCase() == 'S') {
      //exibe mensagem
      print('Digite 1 se você for cliente e 2 para funcionário');
      //recebe resposta da e armazena na variavel
      var identificacaoLeitura = stdin.readLineSync() as String;
      //armazena numa variavel tipada por numero
      int identificacao = int.parse(identificacaoLeitura);

      
      //validacao de usuarios cliente
      if (identificacao == 1) {
        //exibe mensagem
        print('Digite seu nome:');
        //armazena na variavel tipada por texto
        String nomeCliente = stdin.readLineSync() as String;
        //exibe mensagem
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

        //armazena resposta do menu na variavel
        var menuLeitura = stdin.readLineSync() as String;
        //armazena e tipa a variavel em numero
        int menu = int.parse(menuLeitura);

        //abres o escolha caso  e lista o retorno de cada caso / break para findar cada escolha
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

            // default => quando for escolhida uma opcao nao listada essa sera a padrao
          default:
            print('Opção inválida.');
        }

        //incrementa ao fim do processo de cliente mais um atendimento na varial (contador)
        totalClientes++;
        

        //validacao de usuario funcionario
      } else if (identificacao == 2) {
        //exibe mensagem
        print('Digite o código de acesso:');
        //armazena resposta na variavel de leitura
        String codigoAcessoLeitura = stdin.readLineSync() as String;
        //tipa a variavel de leitura em texto e transforma em caixa baixa
        String codigoAcesso = codigoAcessoLeitura.toLowerCase();

        //validacao do codigo de acesso pra funcionarios
        if (codigoAcesso == 'cuidapetrestrito') {


          //armazenando tabela de precos em variaveis (em pontos flutuantes)
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

          //validacao das respostas pra possiveis compras e incrementando a variavel preco total 
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

          //validacao dos descontos em caso de compra casada de dois itens
          if (resposta1 == 'S' && resposta2 == 'S') {
            desconto = (racaoCanin15 + banhoTosa) * 0.10;
            precoTotal = precoTotal - desconto;
          }

          //validacao dos descontos em caso de compra casada de dois itens
          if (resposta2 == 'S' && resposta4 == 'S') {
            desconto = (banhoTosa + hidratacao) * 0.20;
            precoTotal = precoTotal - desconto;
          }

          //exibe o total dos servicos fixado em duas casas decimais apos a virgula
          print(
          'O valor total do serviço é R\$${precoTotal.toStringAsFixed(2)}');

          //incementa o valor dessa operacao a variavel total de orcamento
          totalOrcamentos++;

          //caso o codigo de acessos seja invalido volta ao menu de clientes (pesquisar como tranformar em uma funcao chamada ao inves de reescrever)
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

  //valida a resposta diferente de um novo atendimento sendo true, exibe clientes atendidos e total do orcamento
  if (novoAtendimento.toUpperCase() != 'S') {
    print('O total de clientes atendidos foi $totalClientes.');
    print('O total de orcamentos foi $totalOrcamentos.');
  }

  //fim do programa

 }
