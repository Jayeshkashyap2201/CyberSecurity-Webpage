import 'package:flutter/material.dart';

class card extends StatefulWidget {
  IconData icon;
  String heading;
  String text;
  card({super.key , required this.icon , required this.text , required this.heading});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: 350,
        width: size.width *0.5,
        child: Card(
          elevation: 100,
          shadowColor: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("CyberSecurity Protection",textAlign: TextAlign.center,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Flexible(child: Text("Advanced threat detection Powered by AI",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),))
            ],
          ),
        ),
      ),,
    );
  }
}
