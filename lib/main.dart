import 'package:flutter/material.dart';
import 'package:hejto_app/screens/welcome/welcome_screen.dart';
import 'package:provider/provider.dart';
import '../screens/home_screen.dart';
import 'providers/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(isLightTheme: true),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeWidget();
  }
}

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({
    Key? key,
  }) : super(key: key);

  @override
  _ThemeWidgetState createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hejto APP',
      theme: themeNotifier.getThemeData,
      home: HomeScreen(),
      // home: WelcomeScreen(),
    );
  }
}
