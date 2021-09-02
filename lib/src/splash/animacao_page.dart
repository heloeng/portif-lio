import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_card/animated_card.dart';
import 'package:portifolio/src/homePage/home_page.dart';

class AnimacaoPage extends StatefulWidget {
  const AnimacaoPage({Key? key}) : super(key: key);

  @override
  _AnimacaoPageState createState() => _AnimacaoPageState();
}

class _AnimacaoPageState extends State<AnimacaoPage> {
//iniciar estado
  //estado inicial
  void initState() {
    //quando a tela inicializar (ensureInitialized)
    //primeiro frame for redentizado(addPostFrameCallback)
    //vair esperar 2 segundos(soma o tempo total da animação e acrescenta o tempo que a tela ficara
    //congelada para entrar na home)
    //e navegar na homePage
    // addPostFrameCallback - pega o primeiro frame e
    // e quando aparecer na tela
    //começa a contar os segundos
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback(
      (timeStamp) {
        Future.delayed(Duration(seconds: 4)).then(
          (value) => Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
          ),
        );
      },
    );
// método que é chamado uma vez
// quando o widget com estado é inserido
//na árvore de widgets.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          //não tem collum ou row que permita
          // que tenha tamanho finito
          //ocupa o máximo de tamanho que
          //tem disponível
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF9A00FF),
          ),
          child: Stack(children: [
            AnimatedCard(
              duration: Duration(seconds: 1),
              direction: AnimatedCardDirection.top,
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //escolhe qual elemento irá para a segunda tela
                  //adicione um "Hero" (widget compartilhado/ transição de elemento)
                  //voa a imagem de uma tela para outra
                  //clica na image.asset e defina um "hero"
                  //depois replica o hero para a  tela onde será
                  //redenrizado para os elementos "voaderes".
                  //hero leva o width de uma tela a outra em forma de animação
                  Hero(
                    tag: 'logo',
                    child: Image.asset(
                      "assets/images/logoHelo01.png",
                      height: 160,
                    ),
                  ),

                  //clica em row e defina um "hero"
                  Hero(
                    tag: "texto",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCard(
                          duration: Duration(seconds: 2),
                          direction: AnimatedCardDirection.left,
                          child: Text(
                            "Engenharia",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent[700],
                            ),
                          ),
                        ),
                        AnimatedCard(
                          duration: Duration(seconds: 2),
                          direction: AnimatedCardDirection.right,
                          child: Text(
                            " de Software",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  AnimatedCard(
                    direction: AnimatedCardDirection.bottom,
                    duration: Duration(seconds: 3),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Heloiza Mendes",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            )
          ])),
    );
  }
}
