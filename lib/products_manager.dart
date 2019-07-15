import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductsManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductsManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<Map<String,String>> _products = [];

  @override
  void initState() {
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }
   
    super.initState();
  }

  void addProduct(Map<String,String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void deleteItem(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(15.0),
          child: ProductControl(addProduct)),
      Expanded(child:Products(_products, deleteItem: deleteItem))
    ]);
  }
}
