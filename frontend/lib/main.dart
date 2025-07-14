import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/main_view.dart';
import 'viewmodels/main_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainViewModel()),
        // Add other ViewModels here
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MainView()),
    ),
  );
}
