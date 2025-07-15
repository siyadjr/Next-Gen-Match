import 'package:flutter/material.dart';
import 'package:next_gen_match/Core/Theme/app_colours.dart';
import 'package:next_gen_match/Core/custom/custom_scaffold.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(opacity: 0.3, body: Center(child: Text('hellos')));
  }
}
