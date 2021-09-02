
import 'package:flutter/material.dart';
import 'package:animated_card/animated_card.dart';
import 'package:portifolio/src/contato/Contato_page.dart';
import 'package:portifolio/src/projetos/projetos_page.dart';

class HomePage1 extends StatefulWidget {
  HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          //não tem collum ou rum que permita
          // que tenha tamanho finito
          //ocupa o máximo de tamanho que
          //tem disponível
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF9A00FF),
          ),
          child: Stack(children: [
            Image.asset(
              "assets/images/helo0222.png",
              width: double.infinity,
              // fit: BoxFit.fitHeight,
            ),
            Opacity(
              opacity: 0.6,
              child: Image.asset(
                "assets/images/fundo.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Image.asset(
                      "assets/images/logoHelo01.png",
                      height: 50,
                    ),
                  ),
                  Hero(
                    tag: "texto",

                    //acrescentei o "Material" no width Row para tirar o erro
                    //que mostra o texto "ngenharia de Software" com sublinhado vermelho
                    child: Material(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ngenharia",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.redAccent[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " de Software",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
//

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: const EdgeInsets.only(
                    top: 35.0,
                  ),
                  alignment: Alignment.center,
                  // width: 400,
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Olá, Seja Bem-vindo(a), meu nome é Heloiza",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Sou estudante de Engenharia de Computação",
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Front-End e Mobile",
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Web Full Stack",
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      ElevatedButton(
                        child: Text("Saiba Mais"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProjetosPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.redAccent[700], elevation: .0),
                      ),
                    ],
                  )),
            )
          ])),
    );
  }
}
