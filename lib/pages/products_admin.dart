import 'package:flutter/material.dart';
import 'package:startup_namer/pages/product_create.dart';
import 'package:startup_namer/pages/product_list.dart';

import 'products.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProductsPage()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Админ'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Добавить продукт',
              ),
              Tab(text: 'Список продуктов')
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          ProductCreatePage(),
          ProductListPage()
        ],),
      ),
    );
  }
}
