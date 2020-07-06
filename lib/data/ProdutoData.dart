import 'package:flutter/material.dart';

import '../models/ProdutoModel.dart';

final produtos = [
  Produto(
      idProduto: 1,
      nome: "X-TUDO",
      categoria: 'SANDUÍCHES',
      preco: 8.0,
      imagePath: "assets/images/cardapio/layer-xtudo-pq.png",
      desconto: 0.0,
      ratings: 5),
  Produto(
      idProduto: 2,
      nome: "X-BURGUER",
      categoria: 'SANDUÍCHES',
      preco: 6.0,
      imagePath: "assets/images/cardapio/layer-xburguer-pq.png",
      desconto: 0.0,
      ratings: 5),
  Produto(
      idProduto: 3,
      nome: "X-BACON",
      categoria: 'SANDUÍCHES',
      preco: 6.0,
      imagePath: "assets/images/cardapio/layer-xbacon-pq.png",
      desconto: 0.0,
      ratings: 5),
];
