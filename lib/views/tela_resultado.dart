import 'package:calculo_imc/custom_widgets.dart/botao_rodape.dart';
import 'package:calculo_imc/custom_widgets.dart/cartao_padrao.dart';
import 'package:calculo_imc/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaResultado extends StatelessWidget {
  const TelaResultado(
      {this.interpretacao, this.resultadoIMC, this.resultadoTexto});

  final String? resultadoIMC;
  final String? resultadoTexto;
  final String? interpretacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Reultado',
                style: kTituloTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
              cor: kCorPrincipal,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultadoTexto.toString().toUpperCase(),
                    style: kResultadoTextStyle,
                  ),
                  Text(
                    resultadoIMC.toString(),
                    style: kIMCTextStyle,
                  ),
                  Text(
                    interpretacao.toString(),
                    style: kCorpoTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BotaoRodape(
            route: () {
              Navigator.pop(context);
            },
            textoBotao: 'CALCULAR',
          )
        ],
      ),
    );
  }
}
