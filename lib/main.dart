import 'package:flutter/material.dart';

void main() {
  
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.black,
      ) ,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/anatel-logo.png",
            width: 200,
            ),
            Text("clique para gerar uma frase!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                  "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              color: Colors.blue,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
