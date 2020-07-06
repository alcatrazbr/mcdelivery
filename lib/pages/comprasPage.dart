import 'package:flutter/material.dart';
import 'package:mcdelivery/widgets/ComprasCarrinho.dart';

class ComprasPage extends StatefulWidget {
  @override
  _ComprasPageState createState() => _ComprasPageState();
}

class _ComprasPageState extends State<ComprasPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[ComprasCarrinho()],
    );
  }
}
