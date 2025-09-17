import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sih_cyber_security/Cubit/States.dart';
import 'package:sih_cyber_security/Screens/Detection.dart';
import 'package:sih_cyber_security/Screens/NotVerifiedScreen.dart';
import 'package:sih_cyber_security/Screens/home.dart';
import 'package:sih_cyber_security/Screens/verifyingScreen.dart';

import 'Screens/BlocBuilder.dart';
import 'Screens/VerifiedScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Notverifiedscreen(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<States>(
          create: (BuildContext context)=>States())
      ],
      child: Blocbuilder());
  }
}
