import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/main_view.dart';
import 'viewmodels/main_view_model.dart';
import 'theme/theme.dart';
import 'theme/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainViewModel()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        // Add other ViewModels here
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'The Last Call',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: themeProvider.themeMode,
            home: MainView(),
          );
        },
      ),
    ),
  );
}
