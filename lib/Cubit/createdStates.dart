import 'package:sih_cyber_security/Screens/Detection.dart';
import 'package:sih_cyber_security/Screens/home.dart';

abstract class AllStates{

}
class InitialState extends AllStates{

}

class VerifyingState extends AllStates{

}

class VerifiedState extends AllStates{

}

class NotVerifiedState extends AllStates{

}

class ErrorState extends AllStates{
  String error;
  ErrorState({required this.error});
}