import 'package:flutter/material.dart';
import 'package:startup_namer/pages/products_admin.dart';
// import 'package:flutter/rendering.dart';

import './pages/auth.dart';
import './pages/products.dart';

void main() {
  // debugPaintBaselinesEnabled = true;
  // debugPaintSizeEnabled = true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      //home: AuthPage(),
      routes:{
        '/': (BuildContext context) => ProductsPage(),
        '/admin': (BuildContext context) => ProductsAdminPage()
      }
    );
  }
}
