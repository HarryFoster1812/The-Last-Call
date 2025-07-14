import 'package:flutter/material.dart';
import 'package:the_last_call/theme/custom_theme_data.dart';

class WeekSummary extends StatelessWidget {
  const WeekSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customColors = theme.extension<CustomThemeData>()!;
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(top: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Last 7 Days',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'View All',
                style: TextStyle(color: Color(0xFF667EEA), fontSize: 14),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First card
            Expanded(
              child: Card(
                elevation: 10,
                child: SizedBox(
                  height: 85,
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsetsGeometry.only(top: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '12',
                          style: TextStyle(
                            color: Color(0xFF667EEA),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Units',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF4B5563),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Second card
            Expanded(
              child: Card(
                elevation: 10,
                child: SizedBox(
                  height: 85,
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsetsGeometry.only(top: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          r'$150',
                          style: TextStyle(
                            color: Color(0xFF85BB65), // colour of money
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Spent',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF4B5563),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Card(
                elevation: 10,
                child: SizedBox(
                  height: 85,
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsetsGeometry.only(top: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Sessions',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF4B5563),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
