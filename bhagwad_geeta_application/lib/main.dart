import 'package:bhagwad_geeta_application/screens/home_page/view/home_page.dart';
import 'package:bhagwad_geeta_application/screens/verses_page/views/verses_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bhagwad_geeta_application/provider/json_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => JsonProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Colors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.orange.shade600,
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.orange),
          iconButtonTheme: const IconButtonThemeData(
              style: ButtonStyle(
                  iconColor: WidgetStatePropertyAll(
                    Colors.orange,
                  ),
                  iconSize: WidgetStatePropertyAll(28)))),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'verse': (context) => VersesPage(),
        'page': (context) => PageView()
      },
    );
  }
}
