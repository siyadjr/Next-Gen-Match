import 'package:flutter/material.dart';
import 'package:next_gen_match/Core/Theme/app_colours.dart';
import 'package:next_gen_match/Core/custom/custom_scaffold.dart';
import 'package:next_gen_match/Core/sharedpref/auth_sharedpref.dart';
import 'package:next_gen_match/Features/auth/pages/screens/screen_sign_in.dart';
import 'package:next_gen_match/Features/home/pages/screeens/screen_home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      if (context.mounted) {
        checkLogin(context);
      }
    });
    return CustomScaffold(
      opacity: 0.5,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.heat_pump_rounded,
              size: 30,
              color: AppColours.thirdColour,
            ),
            Text(
              "NextGen Match",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColours.thirdColour,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> checkLogin(BuildContext context) async {
    final check = await AuthSharedpref().checkLoggin();
    if (check == null || check == false) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (ctx) => ScreenSignIn()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (ctx) => ScreenHome()),
      );
    }
  }
}
