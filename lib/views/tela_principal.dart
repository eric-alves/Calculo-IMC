import 'package:calculo_imc/controllers/calculo_imc.dart';
import 'package:calculo_imc/custom_widgets.dart/botao_circular.dart';
import 'package:calculo_imc/custom_widgets.dart/botao_rodape.dart';
import 'package:calculo_imc/utils/constants.dart';
import 'package:calculo_imc/views/tela_resultado.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../custom_widgets.dart/cartao_padrao.dart';
import '../custom_widgets.dart/widget_select_sexo.dart';

enum EnumSexo { male, female }

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

EnumSexo sexo = EnumSexo.male;
int altura = 180;
int peso = 60;
int idade = 18;

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CALCULADORA IMC"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CartaoPadrao(
                      acao: () {
                        setState(() {
                          sexo = EnumSexo.male;
                        });
                      },
                      cor: sexo == EnumSexo.male ? kCorPrincipal : kCorInativo,
                      filhoCartao: WidgetSelectSexo(
                        icone: FontAwesomeIcons.mars,
                        texto: "Masculino",
                      ),
                    ),
                  ),
                  Expanded(
                    child: CartaoPadrao(
                      acao: () {
                        setState(() {
                          sexo = EnumSexo.female;
                        });
                      },
                      cor:
                          sexo == EnumSexo.female ? kCorPrincipal : kCorInativo,
                      filhoCartao: WidgetSelectSexo(
                        icone: FontAwesomeIcons.venus,
                        texto: "Feminino",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: CartaoPadrao(
                cor: kCorPrincipal,
                filhoCartao: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'ALTURA',
                      style: kDescricaoTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          altura.toString(),
                          style: kNumerosCards,
                        ),
                        const Text(
                          'cm',
                          style: kDescricaoTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: altura.toDouble(),
                      onChanged: ((value) {
                        setState(() {
                          altura = value.toInt();
                        });
                      }),
                      max: 220,
                      min: 30,
                      activeColor: Colors.white,
                      inactiveColor: kCorInativo,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CartaoPadrao(
                      cor: kCorPrincipal,
                      filhoCartao: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Peso",
                            style: kDescricaoTextStyle,
                          ),
                          Text(
                            peso.toString(),
                            style: kNumerosCards,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              BotaoCircular(
                                icone: FontAwesomeIcons.minus,
                                aoPressionar: () {
                                  setState(() {
                                    if (peso > 1) peso--;
                                  });
                                },
                              ),
                              BotaoCircular(
                                icone: FontAwesomeIcons.plus,
                                aoPressionar: () {
                                  setState(() {
                                    if (peso < 200) peso++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CartaoPadrao(
                      cor: kCorPrincipal,
                      filhoCartao: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Idade",
                            style: kDescricaoTextStyle,
                          ),
                          Text(
                            idade.toString(),
                            style: kNumerosCards,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              BotaoCircular(
                                icone: FontAwesomeIcons.minus,
                                aoPressionar: () {
                                  setState(() {
                                    if (idade > 1) idade--;
                                  });
                                },
                              ),
                              BotaoCircular(
                                icone: FontAwesomeIcons.plus,
                                aoPressionar: () {
                                  setState(() {
                                    if (idade < 120) idade++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BotaoRodape(
              route: () {
                CalculadoraIMC calculadoraIMC =
                    CalculadoraIMC(peso: peso, altura: altura);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaResultado(
                              resultadoIMC: calculadoraIMC.calcularIMC(),
                              interpretacao:
                                  calculadoraIMC.obterInterpretacao(),
                              resultadoTexto: calculadoraIMC.obterResultado(),
                            )));
              },
              textoBotao: 'CALCULAR',
            )
          ],
        ),
      ),
    );
  }
}
