import 'package:flutter/material.dart';

class ProjetosPage extends StatefulWidget {
  ProjetosPage({Key? key}) : super(key: key);

  @override
  _ProjetosPageState createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Projetos',
      )),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(
              top: 55.0,
            ),
            child: Column(
              children: [
                Text(
                  "Confira meus projetos:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "FRONT-END",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Gold Belle Acessorios",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  "assets/images/goldBelle.jpeg",
                  height: 390,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Projeto Hotel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  "assets/images/hotel.JPG",
                  height: 160,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "REACT NATIVE",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Calculadora",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  "assets/images/calculadora.jpeg",
                  height: 390,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Cálculo IMC",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  "assets/images/calculoImc.jpeg",
                  height: 390,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Mercantil Cruzeiro",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  "assets/images/mercado.jpeg",
                  height: 390,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
