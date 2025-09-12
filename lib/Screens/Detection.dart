import 'package:flutter/material.dart';
import 'package:sih_cyber_security/Screens/home.dart';

import 'About.dart';

class Detection extends StatefulWidget {
  const Detection({super.key});

  @override
  State<Detection> createState() => _DetectionState();
}

class _DetectionState extends State<Detection> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black54,
        leading: Icon(Icons.security,color: Colors.white,),
        title: Text("Malware Detection",style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                  child: Text("Home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                SizedBox(width: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                  },
                  child: Text("About",style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold, color: Colors.white),),
                )
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
            child: Column(
              children: [
                Center(child: Text("Run Malware Detection",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 40),)),
                SizedBox(height: 30,),
                Center(child: Text("Upload APK, metadata to analyze for potential malware and security threats.",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 20)),),
                Row(
                  children: [
                    Expanded(child: Container()),
                    SizedBox(
                      height: size.height * 0.8,
                      width: size.width *0.4,
                      child: Card(
                        elevation: 100,
                        shadowColor: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.safety_check_outlined,size: 70,),
                            SizedBox(height: 20,),
                            Flexible( child: Text("Upload APK metadata or pre-bundled samples",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
                            //SizedBox(height: 20,),
                            //Text("Select File",textAlign: TextAlign.start,style: TextStyle(fontSize: 30,color: Colors.grey),),
                            SizedBox(height: 20,),
                            Text("Choose your File",style: TextStyle(fontSize: 20,color: Colors.blue),),
                            SizedBox(height: 20,),
                            Flexible(child: Text("Support for JSON , CSV and Parquet file formats",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),)),
                            SizedBox(height: 20,),
                            MaterialButton(onPressed: (){

                            }

                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      height: size.height * 0.8,
                      width: size.width *0.4,
                      child: Card(
                        elevation: 100,
                        shadowColor: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sd_card_alert_outlined,size: 100,),
                            Text("AI model predicts Safe or Malicious",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                            Flexible(child: Text("Advanced machine learning algorithms for accurate detection",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),))
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
