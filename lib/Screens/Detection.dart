import 'dart:typed_data';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:sih_cyber_security/Screens/home.dart';
import 'About.dart';

class Detection extends StatefulWidget {
  const Detection({super.key});
  @override
  State<Detection> createState() => _DetectionState();
}

class _DetectionState extends State<Detection> {
  String? fileName;
  Uint8List? fileBytes;

  Future<void> pickFile() async {
    // Choose allowed file types (here: any file)
    const XTypeGroup typeGroup = XTypeGroup(
      label: 'files',
      extensions: [], // empty means all file types
    );

    final XFile? file = await openFile(acceptedTypeGroups: [typeGroup]);

    if (file != null) {
      final bytes = await file.readAsBytes();

      setState(() {
        fileName = file.name;
        fileBytes = bytes;
      });

      print("Picked file: $fileName (${fileBytes!.length} bytes)");
    } else {
      setState(() {
        fileName = "No file selected";
        fileBytes = null;
      });
    }
  }


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
                SizedBox(height: 50,),
                Row(
                  children: [
                    Expanded(child: Container()),
                    SizedBox(
                      height: size.height * 1,
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
                            SizedBox(height: 20,),
                            Text(fileName ?? "No file selected",textAlign: TextAlign.start,style: TextStyle(fontSize: 30,color: Colors.green),),
                            SizedBox(height: 20,),
                            Text("Choose your File",style: TextStyle(fontSize: 20,color: Colors.blue),),
                            SizedBox(height: 20,),
                            Flexible(child: Text("Support for JSON , CSV and Parquet file formats",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),)),
                            SizedBox(height: 20,),
                            MaterialButton(
                              elevation: 4,
                              minWidth: 100,
                              disabledColor: Colors.yellow,
                              hoverColor: Colors.green,
                              color: Colors.blue,
                              height: 50,
                              onPressed: (){
                                pickFile();
                              },
                              child: Text("Upload file"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      height: size.height * 1,
                      width: size.width *0.4,
                      child: Card(
                        elevation: 100,
                        shadowColor: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sd_card_alert_outlined,size: 100,),
                            SizedBox(height: 50,),
                            Text("AI model predicts Safe or Malicious",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                            SizedBox(height: 30,),
                            Flexible(child: Text("Advanced machine learning algorithms for accurate detection",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),))
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(height: 50,),
                Text("Build for cybersecurity research and education",textAlign: TextAlign.center,style: TextStyle(fontSize: 20 , color: Colors.white24 ,fontWeight: FontWeight.bold,wordSpacing: 20,letterSpacing: 10),),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
