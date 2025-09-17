import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:sih_cyber_security/Screens/VerifiedScreen.dart';

class Verifyingscreen extends StatefulWidget {
  const Verifyingscreen({super.key});

  @override
  State<Verifyingscreen> createState() => _VerifyingscreenState();
}

class _VerifyingscreenState extends State<Verifyingscreen> {
  bool _showFab = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _showFab = true; // Show FAB after 5 sec
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 1.2,
              width: size.width * 0.6,
              child: Card(
                elevation: 100,
                shadowColor: Colors.white,
                color: Colors.black54 ,
                child: Column(
                  children: [
                    Animate(
                      child: Text("Detecting Your File",textAlign: TextAlign.center,style: TextStyle(color:Colors.white,fontSize: 40 ,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal)).animate().fade(delay:500.ms).slideX()
                    ),
                    SizedBox(height: size.height * 0.1,),
                    Lottie.asset("assets/lottie/FaceID.json",height: 300, reverse: true,repeat: true,fit: BoxFit.cover,delegates: LottieDelegates(
                    values: [
                      ValueDelegate.colorFilter(
                        const ['**'],
                        value: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                    ),
                    ),
                    SizedBox(height: size.height * 0.05,),
                    const Center(child: Text("Wait for 5 seconds...",style: TextStyle(color: Colors.white),)),
                    SizedBox(height: size.height * 0.05,),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child:  _showFab
                      ?FloatingActionButton(
                        hoverColor: Colors.green,
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Verifiedscreen()));
                        },
                        child: Center(child: Text("See the prediction",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)),
                      ):null,
                    ),
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
