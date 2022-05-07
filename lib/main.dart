import 'package:flutter/material.dart';
import 'dart:math';

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

  var _versiculos = [
    "Porque Deus tanto amou o mundo que deu o seu Filho Unigênito, para que todo o que nele crer não pereça, mas tenha a vida eterna.",
    "Portanto, vão e façam discípulos de todas as nações, batizando-os em nome do Pai e do Filho e do Espírito Santo, ensinando-os a obedecer a tudo o que eu lhes ordenei. E eu estarei sempre com vocês, até o fim dos tempos",
    "Busquem, pois, em primeiro lugar o Reino de Deus e a sua justiça, e todas essas coisas lhes serão acrescentadas.",
    "E a paz de Deus, que excede todo o entendimento, guardará os seus corações e as suas mentes em Cristo Jesus.",
  ];

  var _freseGerada = "clique para ler um versículo" ;

  void _gerarVersiculo(){

    var _numeroRadom = Random().nextInt(_versiculos.length);

    setState(() {
      _freseGerada = _versiculos[_numeroRadom];
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.blue,
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
            Text( _freseGerada,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
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
              onPressed: _gerarVersiculo,
            )
          ],
        ),
      ),
    );
  }
}
