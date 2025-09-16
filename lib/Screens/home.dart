import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_cyber_security/Screens/About.dart';
import 'package:sih_cyber_security/Screens/Detection.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              // leading: Image(
              //   image: AssetImage("assets/cyber.jpg"),
              //   fit: BoxFit.cover,
              // ),
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 3,
                title: Text("Malware Detection",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                centerTitle: false,
                background: Image(image: AssetImage("assets/security.jpg",),fit: BoxFit.cover,),
              ),
              expandedHeight: 350,
              pinned: true,
              surfaceTintColor: Colors.black38,
              backgroundColor: Colors.black54,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detection()));
                        },
                        child: Text("Detection",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
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
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text("AI - Powered Apk Malware Detection",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.blue,fontSize: 50),),
                      Expanded(child: Container()),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 30,),
                      Flexible(child: Text("Detect Fake or malicious banking apps with confidence scoring and explainability. Protect users from sophisticated APK-based threats.",style: TextStyle(fontSize: 20, color: Colors.white38,),textAlign: TextAlign.center,),),
                      SizedBox(width: 30,),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      MaterialButton(
                        height: 50,
                        minWidth: size.width * 0.2,
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Detection()));
                        },
                        color: Colors.blue,
                        child: Row(
                          children: [
                            Icon(Icons.info),
                            SizedBox(width: 5,),
                            Text("Try Demo",style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      MaterialButton(
                        minWidth: size.width * 0.2,
                        height: 50,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                        },
                        color: Colors.blue,
                        child: Row(
                          children: [
                            Icon(Icons.remove_red_eye_outlined),
                            SizedBox(width: 5,),
                            Text("Learn More",style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  SizedBox(height: 45,),
                  Row(children: [Expanded(child: Container()),Text("How It Works",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),Expanded(child: Container())],),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 30,),
                      Flexible(child: Text("Upload APK metadata-> AI model predicts -> Results with confidence and flagged features",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color: Colors.white38),)),
                      SizedBox(width: 30,),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30,horizontal: 40),
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        SizedBox(
                          height: size.height * 0.65,
                          width: size.width * 0.25,
                          child: Card(
                            color: Colors.blue,
                            shadowColor: Colors.purple,
                            elevation: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                  ),
                                  child: Icon(Icons.upload,size: 50,)
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(child: Text("Upload APK Metadata",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),))
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Flexible(child: Text("JSON , CSV , Parquet format",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),))
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          height: size.height *0.65,
                          width: size.width * 0.25,
                          child: Card(
                            color: Colors.blue[300],
                            shadowColor: Colors.purple,
                            elevation: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                                    ),
                                    child: Icon(Icons.power,size: 50,)
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(child: Text("AI Model Predicts",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),))
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Flexible(child: Text("Advanced ML Analysis",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),))
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          height: size.height *0.65,
                          width: size.width * 0.25,
                          child: Card(
                            color: Colors.blue,
                            shadowColor: Colors.purple,
                            elevation: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                                    ),
                                    child: Icon(Icons.auto_graph,size: 50,)
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(child: Text("Result with Confidence",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),))
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Flexible(child: Text("Score and flagged features",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),))
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Container(
                        width: size.width * 0.4,
                        child: Column(
                          children: [
                            Text("About the Project",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 20,),
                            Text("The system analyzes APK metadata to classify apps as safe or malicious. It provides a confidence score and highlights suspicious features such as dangerous, API calls or embedded URLs.",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.white70,),),
                            SizedBox(height: 20,),
                            Text("Our advanced machine learning model has been trained on thousands of APK samples to identify patterns that indicates.",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.white70),)
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        height: size.height * 0.6,
                        width: size.width *0.45,
                        child: Card(
                          elevation: 100,
                          shadowColor: Colors.purple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.security,size: 50,),
                              Text("CyberSecurity Protection",textAlign: TextAlign.center,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                              Flexible(child: Text("Advanced threat detection Powered by AI",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 30,),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Key Features",textAlign: TextAlign.center,style: TextStyle(fontSize: 50,color: Colors.white),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    child: Text("Our malware detection system provides comprehensive analysis with transport results you can trial.",textAlign: TextAlign.center,style: TextStyle(color: Colors.white24,fontSize: 18),),
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      SizedBox(
                        height: size.height * 0.6,
                        width: size.width *0.4,
                        child: Card(
                          elevation: 100,
                          shadowColor: Colors.purple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.safety_check_outlined,size: 50,),
                              Text("Upload APK metadata or pre-bundled samples",textAlign: TextAlign.center,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                              Flexible(child: Text("Support for JSON , CSV and Parquet file formats",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),))
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        height: size.height * 0.6,
                        width: size.width *0.4,
                        child: Card(
                          elevation: 100,
                          shadowColor: Colors.purple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.safety_check_outlined,size: 50,),
                              Text("AI model predicts Safe or Malicious",textAlign: TextAlign.center,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                              Flexible(child: Text("Advanced machine learning algorithms for accurate detection",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),))
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      SizedBox(
                        height: size.height * 0.6,
                        width: size.width *0.4,
                        child: Card(
                          elevation: 100,
                          shadowColor: Colors.purple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.safety_check_outlined,size: 50,),
                              Text("Confidence score for every prediction",textAlign: TextAlign.center,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                              Flexible(child: Text("Transparent confidence metrics to assets reliability",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),))
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        height: size.height * 0.6,
                        width: size.width *0.4,
                        child: Card(
                          elevation: 100,
                          shadowColor: Colors.purple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.safety_check_outlined,size: 50,),
                              Text("Explanation of why an app is flagged",textAlign: TextAlign.center,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                              Flexible(child: Text("Detailed analysis of suspicious permission and behaviour",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),))
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Build for cybersecurity research and education",textAlign: TextAlign.center,style: TextStyle(fontSize: 20 , color: Colors.white24 ,fontWeight: FontWeight.bold,letterSpacing: 10),),
                  SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
