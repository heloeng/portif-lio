import 'package:flutter/material.dart';


import 'package:portifolio/src/contato/Contato_page.dart';
import 'package:portifolio/src/homePage1/home_page1.dart';
import 'package:portifolio/src/projetos/projetos_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // lista com  as telas de navegação do bottom Navigation
  final List<Widget> _paginas = [
    HomePage1(),
    ProjetosPage(),
    ContatoPage(),
  ];

  int _paginaAtual = 0;

  void aoMudarDeAba(int indice) {
    setState(() {
      _paginaAtual = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[0],
      bottomNavigationBar: BottomNavigationBar(

          //indica qual o item que deve estar
          //selecionado quando o BottomNavigationBar
          ////for renderizado:
          currentIndex: _paginaAtual,
          onTap: aoMudarDeAba,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                label: 'Contato',
                icon: Icon(Icons.contact_page),
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                label: 'Projetos',
                icon: Icon(Icons.video_library),
                backgroundColor: Colors.red),
          ]),
    );
  }
}
