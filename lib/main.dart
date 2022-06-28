import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_desafio/pages/home_page/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kakogram',
      theme: ThemeData(
        primaryColorDark: Colors.black,
        primarySwatch: Colors.blue,
        cardColor: Colors.grey[900],
        dividerTheme: DividerThemeData(color: Colors.grey[850]),
      ),
      home: const HomePage(),
    );
  }
}
