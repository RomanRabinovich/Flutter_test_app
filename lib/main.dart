import 'package:flutter/material.dart';
import 'package:flutter_applazyload/widgets/auth/auth_widget.dart';
import 'package:flutter_applazyload/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(backgroundColor: const Color.fromRGBO(3, 37, 65, 1)),
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
    );
  }
}
