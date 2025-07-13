import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:next_gen_match/Features/auth/pages/screens/splash_screen.dart';
import 'package:next_gen_match/Features/auth/provider/auth_provider.dart';
import 'package:next_gen_match/firebase_options.dart';
import 'package:provider/provider.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        // Add more providers here if needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
