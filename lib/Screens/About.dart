import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About page banega yaha"),

          //"The system analyzes APK metadata to classify apps as safe or malicious. It provides a confidence score and highlights suspicious features such as dangerous, API calls or embedded URLs.

      ),
    );
  }
}
