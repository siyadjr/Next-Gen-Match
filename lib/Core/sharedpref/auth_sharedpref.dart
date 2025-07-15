import 'package:next_gen_match/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthSharedpref {

Future<void>signup()async{
  final sharedPref=await SharedPreferences.getInstance();
  sharedPref.setBool(userLoggedIn, true);
}
Future<void>signOut()async{
  final sharedPref=await SharedPreferences.getInstance();
  sharedPref.setBool(userLoggedIn, false);
}
Future<bool?>checkLoggin()async{
    final sharedPref=await SharedPreferences.getInstance();
return sharedPref.getBool(userLoggedIn);

}
}