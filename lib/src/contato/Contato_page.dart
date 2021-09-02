import 'package:flutter/material.dart';

class ContatoPage extends StatefulWidget {
  ContatoPage({Key? key}) : super(key: key);

  @override
  _ContatoPageState createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Contato',
      )),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 55.0,
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "helocursos@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 8.0,
                ),
                Image.asset(
                  "assets/images/instagram.png",
                  width: 45,
                  height: 45,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "@heloizasm",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/linkedin.png",
                  width: 45,
                  height: 45,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Heloiza Mendes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 18.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/github.png",
                  width: 45,
                  height: 45,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "heloeng",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // Text(
            //   "Heloiza Mendes",
            // ),
            // Text(
            //   "Heloiza Mendes",
            // ),
          ]),
        ),
      ),
    );
  }
}
