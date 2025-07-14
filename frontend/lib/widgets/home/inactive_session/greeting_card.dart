import 'package:flutter/material.dart';
import 'package:the_last_call/theme/custom_theme_data.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customColors = theme.extension<CustomThemeData>()!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            customColors.inactiveHomeCardGradientStart,
            customColors.inactiveHomeCardGradientEnd,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withAlpha(75),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      width: double.infinity,
      height: 190,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24.0, left: 24),
            child: Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                children: [
                  Text(
                    getGreeting(),
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: theme.shadowColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Ready to track your session?',
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),

                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize
                        .min, // Shrinks to fit content; use .max to stretch
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow, color: Colors.white, size: 24),
                      SizedBox(width: 8),
                      Text(
                        "Start New Session",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getGreeting() {
    int hour = DateTime.now().hour;
    String foreName = "Harry";
    String greeting;
    if (hour <= 12) {
      greeting = 'Good Morning, ';
    } else if ((hour > 12) && (hour <= 16)) {
      greeting = 'Good Afternoon, ';
    } else {
      greeting = 'Good Evening, ';
    }
    return greeting + foreName + "!";
  }
}
