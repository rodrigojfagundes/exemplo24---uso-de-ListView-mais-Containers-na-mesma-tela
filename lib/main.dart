import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //chamando o material app
    return MaterialApp(
      home: Scaffold(
        //tudo q ta no corpo do APP nao fica em baixo dos icones de SINAL, BATERIA, etc...
        body: SafeArea(
          //criando o ListView para pode colcoar um container esticadaaoo
          child: ListView(
            //padding é a margem nas laterais da tela no q ta no APP
            padding: const EdgeInsets.all(8),
            //children é uma LISTA/VETOR de coisas q da para por...
            //no caso vamos por um container BAIXO e LARGO
            children: [
              //criando o container com ALTURA de 50
              //e LARGURA é a tela toda MENOS os 8px de margem do PADDING acima
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('aa')),
              ),
              //criando um ROW/LINHA com 3 CONTAINERS
              Row(
                //criando o "CHILDREN" LISTA/VETOR com 3 CONTAINERS...
                children: [
                  //container, tamanho, cor texto
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: Text('opa'),
                  ),
                  //container, tamanho, cor, texto
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: Text('whatss up?'),
                  ),
                  //container, altura, cor, texto
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.lightBlue,
                    child: Text('dalli'),
                  ),
                ],
                //finalizando essa LINHA... com 3 containers VERDE, VERMELHO e AZUL
              ),
              //criando uma outra linha com 3 containers
              Row(
                //o children e uma LISTA/VETOR para colocar containers em sequencia
                //no caso a sequencia e colocar CONTAINERS em LINHA
                children: [
                  //criando a baixo 3 containers... q serão exibidos em forma de LINHA
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: Text('ihha'),
                  ),
                  //container tamanho, cor, texto
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                    child: Text('olhaaa'),
                  ),
                  //container, tamanho, cor texto
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                    child: Text('Obrigado Deus!'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
