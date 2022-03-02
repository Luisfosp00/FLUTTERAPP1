import 'package:flutter/material.dart';

class dataStack extends StatelessWidget {
  const dataStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página stack"),
        backgroundColor: Colors.pink[200],
      ),
      //body: stackSinPos()
      body: Center(
        child:SizedBox(
          width:300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer, fit: StackFit.expand,
              overflow: Overflow.clip,
              children: <Widget>[
                Container(
                  width:300.0,
                  height: 300.0,
                  //color: Colors.red,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(15.0),
                    decoration: const BoxDecoration(
                      image:DecorationImage(
                      image:  NetworkImage("https://scontent.fgdl8-1.fna.fbcdn.net/v/t1.6435-9/178544372_4130928310279150_4801130618970764178_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeErbORpvqEpt-cxcVk2HO1x0QrkPQ5287TRCuQ9DnbztOomtyWQzSqgAZxqGwrq-OB_94LYJ7l-aIdO1oeVQ_6A&_nc_ohc=2MmyXD4l0kwAX_IdTUR&tn=HdfNAZOX5OwQIKda&_nc_ht=scontent.fgdl8-1.fna&oh=00_AT9M0xJNPdQ4M7JVXt2XmhOIKitvT40gRSwqiOoW6DYJpg&oe=6244EABA")
                    ),
                  ),
                  
                ),
                Positioned(
                  top: 170.0,
                  left: 10.0,
                    child: Container(
                      width: 300.0,
                      height: 60.0,
                      child: const Text("Luis Fernando \n Solis Pacheco",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center
                    ),
                  )
                ),
                Positioned(
                  top: 230.0,
                  left: 81.0,
                  child: Container(
                    width: 150.0,
                    height: 50.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25, vertical: 15)), 
                          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15)) 
                                        
                          ),
                          child: const Text('Regresar'),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
            
          ),
          
        )
      ),
    );
  }
}