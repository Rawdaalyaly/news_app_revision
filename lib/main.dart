import 'package:flutter/material.dart';
import 'package:news_app_revision/Providers/News_Provider.dart';
import 'package:news_app_revision/Screens/NewsApp_HomeScreen.dart';
import 'package:news_app_revision/Screens/News_Screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NewsProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NewsAppHomeScreen(),
      ),
    );
  }
}
