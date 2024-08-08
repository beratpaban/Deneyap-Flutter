import 'package:flutter/material.dart';

class Cekmece extends StatelessWidget {
  const Cekmece({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Berat'),
            accountEmail: Text('beratpaban@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profil.jpg'),
            ),
          ),
          ListTile(
            title: Text('Giriş Ekranı'),
            leading: Icon(
              Icons.home,
            ),
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          ListTile(
            title: Text('Sepetim'),
            leading: Icon(Icons.shopping_cart),
            onTap: () => Navigator.pushNamed(context, '/sepetim'),
          ),
          ListTile(
            title: Text('Ayarlar'),
            leading: Icon(Icons.settings),
            onTap: () => Navigator.pushNamed(context, '/ayarlar'),
          ),
        ],
      ),
    );
  }
}
