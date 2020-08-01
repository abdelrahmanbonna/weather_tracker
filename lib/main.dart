import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_tracker/providers/weather.dart';
import 'package:weather_tracker/screens/home.dart';
import 'package:weather_tracker/utilities/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Weather()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Home.route: (context) => Home(),
        },
        initialRoute: Home.route,
        theme: kTheme,
      ),
    );
  }
}
