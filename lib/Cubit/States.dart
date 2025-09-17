import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sih_cyber_security/Cubit/createdStates.dart';
import 'package:sih_cyber_security/Screens/Detection.dart';
import 'package:sih_cyber_security/Screens/StaticVriables.dart';

class States extends Cubit<AllStates> {
  States() : super (InitialState());

  checkAuthority() async {
    try{
      if(Static.filename == "No file is selected") {
        await Future.delayed(Duration(seconds: 2), () => emit(InitialState()));
        await Future.delayed(Duration(seconds: 2),()=>print("line1"));
      }
      print(Static.value );
      if(Static.value <0){
        emit(VerifyingState());
        print(Static.value );
        await Future.delayed(Duration(seconds: 3),()=>print("line2"));
        if(Static.value>0) {
          emit(VerifiedState());
        }

      }

      print(Static.value );
     // emit(VerifiedState());
      // emit(VerifyingState());
      // emit(VerifiedState());
    }
    catch(e){
      emit(ErrorState(error: e.toString()));
    }
  }
}