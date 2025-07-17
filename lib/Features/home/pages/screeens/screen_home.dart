import 'package:flutter/material.dart';
import 'package:next_gen_match/Core/Theme/app_colours.dart';
import 'package:next_gen_match/Core/custom/custom_scaffold.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScaffold(
      opacity: 0.3,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColours.mainBackGround,
            expandedHeight: size.height / 20,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(25.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // Add your children widgets here
                Container(
                  width: double.infinity,
                  height: size.height / 4.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        // Background image
                        Image.asset(
                          'assets/download (1).jpg',
                          fit: BoxFit.cover,
                        ),
                        // Gradient overlay
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.8),
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // TODO: Add your event creation logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColours.thirdColour,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 12,
                                  ),
                                ),
                                child: const Text(
                                  'Create Event',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Create your events to explore NextGen Match',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Your Events',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColours.thirdColour,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
