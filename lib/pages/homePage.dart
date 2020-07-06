import 'package:flutter/material.dart';
import 'package:mcdelivery/data/ProdutoData.dart';
import 'package:mcdelivery/models/ProdutoModel.dart';
import 'package:mcdelivery/widgets/FoodCategoria.dart';
import 'package:mcdelivery/widgets/HomeTopInfo.dart';
import 'package:mcdelivery/widgets/PedidosFrequentes.dart';
import 'package:mcdelivery/widgets/SearchField.dart';

class HomePage extends StatefulWidget {
  // HomePage({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Produto> _produtos = produtos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Food',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategoria(),
          // SizedBox(height: 10.0),
          SearchField(),
          SizedBox(height: 20.0),

          // --------------
          // titulo pedidos com frequencia
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Pedidos com frequencia",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Ver todos",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),
                ),
              )
            ],
          ),
          // -----
          SizedBox(
            height: 10,
          ),
          // Column(
          //   children: _produtos.map((Produto produto) {
          //     return Container();
          //   }).toList(),
          // ),
          Column(
            children: _produtos.map(_buildProdutosItems).toList(),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildProdutosItems(Produto produto) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: PedidosFrequentes(
        idProduto: produto.idProduto,
        nome: produto.nome,
        imagePath: produto.imagePath,
        categoria: produto.categoria,
        preco: produto.preco,
        desconto: produto.desconto,
        ratings: produto.ratings,
      ),
    );
  }
}
