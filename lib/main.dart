import 'package:ficha_de_ponto/providers/pontos_provider.dart';
import 'package:ficha_de_ponto/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PontosProvider(),
      child: MaterialApp(
        title: 'Folha de Ponto',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: appRoutes,
      ),
    );
  }
}
