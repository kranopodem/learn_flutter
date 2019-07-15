import 'package:flutter/material.dart';

import '../products_manager.dart';
import 'products_admin.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Выберите...'),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('Тест'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text('Test')),
      body: ProductsManager(),
    );
  }
}
