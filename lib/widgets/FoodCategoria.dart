import 'package:flutter/material.dart';
import 'package:mcdelivery/data/CategoriaData.dart';
import 'package:mcdelivery/models/CategoriaModel.dart';
import 'package:mcdelivery/widgets/FoodCard.dart';

class FoodCategoria extends StatelessWidget {
  final List<Categoria> _categorias = categorias;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categorias.length,
        itemBuilder: (BuildContext ctx, int index) {
          return FoodCard(
              Nome: _categorias[index].Nome,
              imagePath: _categorias[index].imagePath,
              nroItems: _categorias[index].nroItems);
        },
      ),
    );
  }
}
