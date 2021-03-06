// ignore_for_file: prefer_const_constructors

//import 'dart:js';
//import 'dart:ui';


//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:testflutter/screens/formScreen.dart';
//import 'package:testflutter/screens/formScreen1.dart';
import 'package:testflutter/screens/dataScreen.dart';
import 'package:testflutter/screens/secondScreen.dart';
import 'package:testflutter/screens/thirdScreen.dart';
import 'package:testflutter/screens/stackScreen.dart';
import 'package:testflutter/screens/dataStackScreen.dart';
import 'package:testflutter/screens/paymentScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter demo',
    initialRoute: '/',
    routes: {
      '/':(context)=> const PaymentScreen(),


      //'/':(context)=> const FormScreen(),
      //'/':(context)=> const FormScreen(),
      //'/':(context)=> const HomePage(),
      '/second':(context)=> const SecondPage(),
      '/datos':(context)=> const DataPage(),
      '/third':(context)=> const ThirdPage(),
      '/stack':(context)=> const TestStack(),
      '/dataStack':(context)=> const dataStack()
      //'/form':(context)=> const ()
    },
    //home: HomePage(),
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
            Image.asset("assets/img/RedBull2.jpg", width:250.0),
               SizedBox(height: 20.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25, vertical: 15)), 
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))               
              ),
              child: const Text('Segunda pantalla'),
              onPressed: (){
                /*
                final route = MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                );
                Navigator.push(context, route);*/
                Navigator.pushNamed(context, '/second');
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
                  /*
                  final route = MaterialPageRoute(
                    builder: (context) => const DataPage(),
                  );
                  Navigator.push(context, route);*/
                  Navigator.pushNamed(context, '/datos');
              }
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
              ),
              child: const Text('Tercera P??gina'),
                onPressed: (){
                  Navigator.pushNamed(context,'/third');
              }
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
              ),
              child: const Text('Stack'),
                onPressed: (){
                  Navigator.pushNamed(context,'/stack');
              }
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
              ),
              child: const Text('DataStack'),
                onPressed: (){
                  Navigator.pushNamed(context,'/dataStack');
              }
            )
            ],
            ),
    ),
    
    );
  }
}



