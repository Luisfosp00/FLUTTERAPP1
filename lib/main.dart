// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter demo',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Pagina inicial'),
        elevation: 20.0,
        shadowColor: Colors.green[400],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {})
        ],
        
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Image.asset("assets/img/RedBull2.jpg", width:370.0),
               SizedBox(height: 20.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25, vertical: 15)), 
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))               
              ),
              child: const Text('Segunda pantalla'),
              onPressed: (){
                final route = MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                );
                Navigator.push(context, route);
              }              
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
              ),
              child: const Text('Datos'),
                onPressed: (){
                  final route = MaterialPageRoute(
                    builder: (context) => const DataPage(),
                  );
                  Navigator.push(context, route);
              }
            )

            ],
            ),
    ),
    
    );
  }
}
// segunda página
class SecondPage extends StatelessWidget{
  const SecondPage({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
        backgroundColor: Colors.purple,
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Colors.purple[400],
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
                backgroundColor: MaterialStateProperty.all(Colors.purple),
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

// página de datos

class DataPage extends StatelessWidget{
  const DataPage({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Colors.blue[400],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: Center(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img/lf.JPEG",
                  width:250.0,
                ),
            SizedBox(height: 20.0,),
                Text('Luis Fernando Solis Pacheco',
                    style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,       
                  ),
                  textAlign: TextAlign.center
                ),
              SizedBox(height: 10.0),
              Text('Tecnologías de la Información',
                style: TextStyle(
                  fontSize: 25,
                ),
                ),
                  SizedBox(height: 10.0),
              Text('TI02SM-20',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
                SizedBox(height: 20.0,),
            ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
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