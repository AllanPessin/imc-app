import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,//teclado sobrepor o flexible
        appBar: AppBar(
          title: Text('IMC'),
          elevation: 4,
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent[400],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Peso",
                        hintText: "Peso em kg",
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    Container(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Altura",
                        hintText: "Altura em metros",
                      ),
                      keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text("calcular IMC",
                          style: TextStyle(           //Decoraçao de texto-- Para decoração de componentes usa-se decoration
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        color: Colors.greenAccent[400],
                        hoverColor: Colors.greenAccent,
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: Image.asset('assets/images/ideal.png',
                fit: BoxFit.contain,
                )
                ),
            ),
          ],
        ),
      ),
    );
  }
}