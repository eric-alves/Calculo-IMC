import 'package:calculo_imc/utils/constants.dart';
import 'package:flutter/material.dart';

class BotaoRodape extends StatelessWidget {
  BotaoRodape({required this.route, required this.textoBotao});

  final VoidCallback? route;
  final String? textoBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        color: Colors.teal,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kAlturaContainerInferior,
        child: Text(
          textoBotao.toString(),
          style: kDescricaoTextStyle,
        ),
      ),
    );
  }
}
