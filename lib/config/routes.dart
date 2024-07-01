// routes.dart
import 'package:flutter/material.dart';
import 'package:your_app_name/screens/dashboard_screen.dart';
import 'package:your_app_name/screens/login_screen.dart';
import 'package:your_app_name/screens/calendar_screen.dart';
import 'package:your_app_name/screens/settings_screen.dart';
import 'package:your_app_name/screens/task_detail_screen.dart';
import 'package:your_app_name/screens/pomodoro_timer_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => DashboardScreen(),
  '/login': (context) => LoginScreen(),
  '/calendar': (context) => CalendarScreen(),
  '/settings': (context) => SettingsScreen(),
  '/task_detail': (context) => TaskDetailScreen(),
  '/pomodoro_timer': (context) => PomodoroTimerScreen(),
};
