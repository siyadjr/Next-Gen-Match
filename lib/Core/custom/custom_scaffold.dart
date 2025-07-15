import 'package:flutter/material.dart';
import 'package:next_gen_match/Core/Theme/app_colours.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final double opacity;
  final BlendMode? blendMode; // Optional blend mode

  const CustomScaffold({
    super.key,
    required this.body,
    this.opacity = 0.8,
    this.blendMode,
  });

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage = Image.asset(
      'assets/video aesthetic.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );

    // Apply blend mode if provided
    if (blendMode != null) {
      backgroundImage = ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(opacity),
          blendMode!,
        ),
        child: backgroundImage,
      );
    } else {
      backgroundImage = Opacity(
        opacity: opacity,
        child: backgroundImage,
      );
    }

    return Scaffold(
      backgroundColor: AppColours.mainBackGround,
      body: Stack(
        children: [
          backgroundImage,
          body,
        ],
      ),
    );
  }
}
