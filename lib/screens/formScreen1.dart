/*//import 'dart:ffi';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool _isChecked=false;
  late TextEditingController _controller;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose(){
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 390,
          color: Colors.blue[100],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: "Correo",
                    hintText: "correo@correo.com",
                    prefixIcon: Icon(Icons.contact_mail),
                    //prefix: Text("hey ")
                    //icon: Icon(Icons.contact_mail)
                  ),
                  
                  /*onSubmitted: (String value) async {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Mensaje'),
                          content: Text('Haz escrito "$value" , y tiene de longitud ${value.characters.length}'),
                          actions: <Widget>[
                            TextButton(
                              onPressed:  ()=> Navigator.pop(context),
                              child: const Text("ok"))
                          ],
                        );  
                      },
                    );
                  },*/
                ),
                const SizedBox(height: 30.0,),
                const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Contraseña",
                    prefixIcon: Icon(Icons.lock) ,
                  ),
                ),
                const SizedBox(height: 30.0,),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
                    LengthLimitingTextInputFormatter(16)
                  ],
                  decoration: const InputDecoration(
                    labelText: "Tarjeta",
                    prefixIcon: Icon(Icons.credit_card) ,
                  ),
                ),
                const SizedBox(height: 30.0,),
                Checkbox(
                  value: _isChecked, 
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked=value!;
                    });
                    
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}   */