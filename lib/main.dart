import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core';
import 'package:your_app_name/config/routes.dart';
import 'package:your_app_name/providers/auth_provider.dart';
import 'package:your_app_name/providers/task_provider.dart';
import 'package:your_app_name/providers/theme_provider.dart';
import 'package:your_app_name/utils/theme.dart';
import 'package:your_app_name/config/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => TaskProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Daily Planner',
            theme: themeProvider.getTheme(),
            initialRoute: '/',
            routes: routes,
          );
        },
      ),
    );
  }
}
