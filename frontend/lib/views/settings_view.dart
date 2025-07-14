import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_last_call/models/theme_provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Center(
              child: Text('Settings', style: theme.textTheme.displayMedium),
            ),
            DropdownMenu(
              initialSelection: themeProvider.themeMode
                  .toString()
                  .split('.')
                  .last,
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 'system', label: 'System'),
                DropdownMenuEntry(value: 'light', label: 'Light'),
                DropdownMenuEntry(value: 'dark', label: 'Dark'),
              ],
              onSelected: (String? value) {
                if (value != null) {
                  final mode = switch (value) {
                    'light' => ThemeMode.light,
                    'dark' => ThemeMode.dark,
                    _ => ThemeMode.system,
                  };
                  themeProvider.setThemeMode(mode);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
