import 'package:calculo_imc/utils/constants.dart';
import 'package:flutter/material.dart';

class WidgetSelectSexo extends StatelessWidget {
  WidgetSelectSexo({required this.icone, required this.texto});

  final IconData icone;
  final String texto;
  final Color corPrincipal = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          size: 95,
          color: corPrincipal,
        ),
        const SizedBox(height: 15),
        Text(
          texto,
          style: kDescricaoTextStyle,
        ),
      ],
    );
  }
}
