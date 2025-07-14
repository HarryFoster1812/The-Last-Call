import 'package:flutter/material.dart';
import 'package:the_last_call/theme/custom_theme_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customColors = theme.extension<CustomThemeData>()!;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            child: Container(
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
              width: 350,
              height: 190,
              margin: const EdgeInsets.all(16),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Align(
                  alignment: Alignment.topLeft, // ⬅️ Key change
                  child: Text(
                    'Good evening, Name!',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
