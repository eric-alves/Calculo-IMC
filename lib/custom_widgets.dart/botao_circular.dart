import 'package:flutter/material.dart';

class BotaoCircular extends StatelessWidget {
  BotaoCircular({this.icone, this.aoPressionar});

  final IconData? icone;
  final VoidCallback? aoPressionar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: aoPressionar,
      elevation: 6,
      constraints: const BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      shape: const CircleBorder(),
      fillColor: Colors.amber,
      child: Icon(icone),
    );
  }
}
