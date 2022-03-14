import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreen();
}

class _PaymentScreen extends State<PaymentScreen> {
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
  final _maskCard = MaskTextInputFormatter(mask: '####-####-####-####', filter: { "#": RegExp(r'[0-9]') });
  final _maskExp = MaskTextInputFormatter(mask: "##/##", filter: { "#": RegExp(r'[0-9]') });
  final _maskCVV = MaskTextInputFormatter(mask: "###", filter: { "#": RegExp(r'[0-9]') });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(  
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Container(
              padding: const EdgeInsets.symmetric(horizontal: 0.0), 
              margin: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 90.0),
                  Image.asset("assets/img/credit.png", width: 300.0,),
                  const SizedBox(height: 50),
                  inputName(_controller),
                  const SizedBox(height: 25),
                  inputCard(_maskCard),
                  const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0), 
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                      height: 100.0,
                      child: Row(
                        children: [
                          inputExpiration(_maskExp),
                          inputCVV(_maskCVV),
                        ]
                      ),
                    ),
                    const SizedBox(height: 10), 
                    ElevatedButton( 
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 0, 19, 190))
                      ),
                      onPressed: () => {}, 
                      child: const Text('Confirmar compra') 
                 ),
                ], 
              ),
              ),
            ],
            ),
          ) 
        ),
      ),
    );
  }
}

Widget inputName(_controller){ 
  return Container( 
    padding: const EdgeInsets.symmetric(horizontal: 20.0), 
    margin: const EdgeInsets.symmetric(horizontal: 30.0), 
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), 
      border: Border.all(color: Color.fromARGB(255, 0, 19, 190), width: 2.0) 
    ), 
    child: TextFormField( 
      keyboardType: TextInputType.text,  
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration( 
        border: InputBorder.none, 
        prefixIcon: Icon(Icons.face, color: Color.fromARGB(255, 0, 19, 190),), 
        labelText: 'Nombre',  
      ), 
    ), 
  ); 
}

Widget inputCard(_maskCard){ 
  return Container( 
    padding: const EdgeInsets.symmetric(horizontal: 20.0), 
    margin: const EdgeInsets.symmetric(horizontal: 30.0), 
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), 
      border: Border.all(color: Color.fromARGB(255, 0, 19, 190), width: 2.0) 
    ), 
    child: TextFormField( 
      keyboardType: TextInputType.number, 
      inputFormatters: [ 
        _maskCard
      ], 
      decoration: const InputDecoration( 
        border: InputBorder.none, 
        prefixIcon: Icon(Icons.credit_card, color: Color.fromARGB(255, 0, 19, 190),), 
        labelText: 'Tarjeta', 
        hintText: '1111-2222-3333-4444',
        
         
      ), 
    ), 
  ); 
}



Widget inputExpiration(_maskExp){ 
  return Container( 
    width: 130.0,
    padding: const EdgeInsets.symmetric(horizontal: 0.0), 
    margin: const EdgeInsets.symmetric(horizontal: 30.0), 
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), 
      border: Border.all(color: Color.fromARGB(255, 0, 19, 190), width: 2.0) 
    ), 
    child: TextFormField( 
      obscureText: false,
      keyboardType: TextInputType.number, 
      inputFormatters: [
        _maskExp
      ], 
      decoration: const InputDecoration( 
        border: InputBorder.none, 
        prefixIcon: Icon(Icons.calendar_month,color: Color.fromARGB(255, 0, 19, 190)),
        labelText: 'Expiración',  
      ), 
    ), 
  );
} 

Widget inputCVV(_maskCVV){ 
  return Container( 
    width: 110.0,
    padding: const EdgeInsets.symmetric(horizontal: 0.0), 
    margin: const EdgeInsets.symmetric(horizontal: 30.0), 
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), 
      border: Border.all(color: Color.fromARGB(255, 0, 19, 190), width: 2.0) 
    ), 
    child: TextFormField(
      obscureText: true, 
      keyboardType: TextInputType.number,
      inputFormatters: [
        _maskCVV
      ],  
      decoration: const InputDecoration( 
        border: InputBorder.none, 
        prefixIcon: Icon(Icons.security, color: Color.fromARGB(255, 0, 19, 190),), 
        labelText: 'CVV',  
      ), 
    ), 
  ); 
}
