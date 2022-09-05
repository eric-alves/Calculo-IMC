import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  CartaoPadrao({this.cor, this.filhoCartao, this.acao});

  final Color? cor;
  final Widget? filhoCartao;
  final VoidCallback? acao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: acao,
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: filhoCartao,
      ),
    );
  }
}
