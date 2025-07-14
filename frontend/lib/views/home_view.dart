import 'package:flutter/material.dart';
import 'package:the_last_call/widgets/home/inactive_session/greeting_card.dart';
import 'package:the_last_call/widgets/home/inactive_session/week_summary.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView(children: <Widget>[GreetingCard(), WeekSummary()]),
      ),
    );
  }
}
