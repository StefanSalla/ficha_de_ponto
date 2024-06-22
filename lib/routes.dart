import 'package:ficha_de_ponto/screens/detalhes_screen.dart';
import 'package:ficha_de_ponto/screens/form_screen.dart';
import 'package:ficha_de_ponto/screens/home_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/form': (context) => FormScreen(),
  '/detalhes': (context) => DetalhesScreen(),
};
