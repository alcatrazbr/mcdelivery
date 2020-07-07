import 'package:flutter/material.dart';
import 'package:mcdelivery/pages/loginPage.dart';
import 'package:mcdelivery/widgets/ComprasCarrinho.dart';

class ComprasPage extends StatefulWidget {
  @override
  _ComprasPageState createState() => _ComprasPageState();
}

class _ComprasPageState extends State<ComprasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('Seu carrinho', style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              ComprasCarrinho(),
              ComprasCarrinho(),
              ComprasCarrinho(),
              ComprasCarrinho()
            ],
          ),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 200.0,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          // ListTile(
          //   leading: Text("Total do carrinho:",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black54)),
          //   trailing: Text("20.00",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600,color: Colors.red)),
          // ),
          // ListTile(
          //   leading: Text("Desconto:",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.grey)),
          //   trailing: Text("0.00",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600,color: Colors.blue)),
          // ),
          // ListTile(
          //   leading: Text("Taxa:",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.grey)),
          //   trailing: Text("0.00",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600,color: Colors.red)),
          // ),
          // ListTile(
          //   leading: Text("Total geral:",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black)),
          //   trailing: Text("20.00",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.red)),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Total do carrinho:",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54)),
              Text("20.00",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.red)),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Desconto:",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              Text("0.00",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue)),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Taxa:",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              Text("0.00",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.red)),
            ],
          ),
          Divider(height: 20.0, color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Total geral:",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text("20.00",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            ],
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage()));
            },
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Center(
                  child: Text("FINALIZAR A COMPRA",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
          )
        ],
      ),
    );
  }
}
