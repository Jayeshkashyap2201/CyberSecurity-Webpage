import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sih_cyber_security/Cubit/States.dart';
import 'package:sih_cyber_security/Cubit/createdStates.dart';
import 'package:sih_cyber_security/Screens/Detection.dart';
import 'package:sih_cyber_security/Screens/VerifiedScreen.dart';
import 'package:sih_cyber_security/Screens/verifyingScreen.dart';
import 'NotVerifiedScreen.dart';
import 'home.dart';

class Blocbuilder extends StatefulWidget {
  const Blocbuilder({super.key});

  @override
  State<Blocbuilder> createState() => _BlocbuilderState();
}

class _BlocbuilderState extends State<Blocbuilder> {
  @override
  void initState(){
    super.initState();
    BlocProvider.of<States>(context).checkAuthority();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<States,AllStates>(
        builder : (context , state){
          if(state is InitialState){
            return Home();
          }
          if(state is VerifyingState){
            return Detection();
          }
          if (state is VerifiedState){
            return Center(child: CircularProgressIndicator(),);//Verifiedscreen();
          }
          if(state is NotVerifiedState){
            return Notverifiedscreen();
          }
          if(state is ErrorState){
            return Center(child: Text(state.error),);
          }
          return Home();
        }
      ),
    );
  }
}
