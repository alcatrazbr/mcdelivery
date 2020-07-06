import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mcdelivery/pages/comprasPage.dart';
import 'package:mcdelivery/pages/favoritosPage.dart';
import 'package:mcdelivery/pages/homePage.dart';
import 'package:mcdelivery/pages/perfilPage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> pages;

  Widget currentPage;

  HomePage homePage;
  ComprasPage comprasPage;
  FavoritosPage favoritosPage;
  PerfilPage perfilPage;

  @override
  void initState() {
    super.initState();

    homePage = HomePage();
    comprasPage = ComprasPage();
    favoritosPage = FavoritosPage();
    perfilPage = PerfilPage();

    pages = [homePage, comprasPage, favoritosPage, perfilPage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.deepOrange,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("pedidos"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favoritos"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Perfil"),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
