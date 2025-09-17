import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';

class Notverifiedscreen extends StatefulWidget {
  const Notverifiedscreen({super.key});

  @override
  State<Notverifiedscreen> createState() => _NotverifiedscreenState();
}

class _NotverifiedscreenState extends State<Notverifiedscreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 1.2,
              width: size.width * 0.8,
              child: Card(
                elevation: 100,
                shadowColor: Colors.purple,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Animate(child: Text("Our models predicts this Not Safe",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),).animate().fade(delay:100.milliseconds).slideY()),
                    SizedBox(height: size.height * 0.05,),
                    Lottie.asset("assets/lottie/Fault.json",height : size.height * 0.5,repeat: true,reverse: true,fit: BoxFit.cover),
                    SizedBox(height: size.height * 0.05,),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: FloatingActionButton(
                        hoverColor: Colors.red.shade300,
                        backgroundColor: Colors.grey.shade300,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        },
                        child: Center(child: Text("Done",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    SizedBox(height: size.height * 0.05,),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
