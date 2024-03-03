import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/dataUpdate.dart';
import 'package:provider_demo/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DataUpdate()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );
  }
}
