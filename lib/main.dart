import 'package:flutter/material.dart';
import 'package:multiprovider/home.dart';
import 'package:multiprovider/provider1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Provider1()),
        ChangeNotifierProvider(create: (context) => provider2())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
