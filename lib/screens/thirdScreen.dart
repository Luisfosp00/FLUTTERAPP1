// tercera página
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget{
  const ThirdPage({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera pantalla'),
        backgroundColor: Colors.lime,
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Colors.lime[400],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lime),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25, vertical: 15)), 
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))               
            ),
          child: const Text('Regresar'),
          onPressed: () => Navigator.pop(context),
        )
        ]),
         
      ),
    );
  }
}