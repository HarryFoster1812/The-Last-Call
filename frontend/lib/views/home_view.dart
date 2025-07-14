import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_last_call/models/theme_provider.dart';
import 'package:the_last_call/views/main_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFEFF6FF), // #EFF6FF
                    Color(0xFFFAF5FF), // #FAF5FF
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
