import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:sih_cyber_security/Screens/home.dart';

class Verifiedscreen extends StatefulWidget {
  const Verifiedscreen({super.key});

  @override
  State<Verifiedscreen> createState() => _VerifiedscreenState();
}

class _VerifiedscreenState extends State<Verifiedscreen> {
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
                    Animate(child: Text("Our models predicts this Safe",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),).animate().fade(duration: 500.ms).slideX()),
                    SizedBox(height: size.height * 0.1,),
                    Lottie.asset("assets/lottie/verified.json",height: size.height * 0.5,repeat: true,reverse: true,fit: BoxFit.cover),
                    SizedBox(height: size.height * 0.05,),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: FloatingActionButton(
                        hoverColor: Colors.blue,
                        backgroundColor: Colors.grey.shade300,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        },
                        //hoverColor: Colors.green,
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
