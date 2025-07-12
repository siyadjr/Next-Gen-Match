import 'package:flutter/material.dart';
import 'package:next_gen_match/Core/Secured/api_keys.dart';
import 'package:next_gen_match/Features/auth/pages/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: ApiKeys.supbaseUrl,
    anonKey: ApiKeys.supabaseAnonKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      title: 'Next Gen Match',
    );
  }
}
