import 'package:flutter/material.dart';

class PedidosFrequentes extends StatefulWidget {
  final int idProduto;
  final String nome;
  final String categoria;
  final String imagePath;
  final double preco;
  final double desconto;
  final double ratings;

  PedidosFrequentes(
      {this.idProduto,
      this.nome,
      this.categoria,
      this.imagePath,
      this.preco,
      this.desconto,
      this.ratings});

  @override
  _PedidosFrequentesState createState() => _PedidosFrequentesState();
}

class _PedidosFrequentesState extends State<PedidosFrequentes> {
  @override
  Widget build(BuildContext context) {
    print(widget.imagePath);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 230.0,
            width: 380.0,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            height: 60.0,
            width: 380.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.black12],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.nome,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16.0),
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16.0),
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16.0),
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16.0),
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16.0),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("(22 Comentários)",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey)),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      widget.preco.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent,
                          fontSize: 16.0),
                    ),
                    Text(
                      widget.desconto.toString(),
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
