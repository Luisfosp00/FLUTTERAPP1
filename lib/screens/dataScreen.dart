// página de datos
import 'package:flutter/material.dart';


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