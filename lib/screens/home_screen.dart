import 'package:ficha_de_ponto/components/ponto_tile.dart';
import 'package:ficha_de_ponto/providers/pontos_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Folha de Ponto')),
      body: Consumer<PontosProvider>(
        builder: (context, pontosProvider, child) {
          return ListView.builder(
            itemCount: pontosProvider.pontos.length,
            itemBuilder: (context, index) {
              final ponto = pontosProvider.pontos[index];
              return PontoTile(
                ponto: ponto,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/detalhes',
                    arguments: ponto.id,
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/form');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
