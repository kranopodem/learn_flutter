import 'package:flutter/material.dart';
import 'dart:async';

class ProductDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductDetailPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print('back');
          Navigator.pop(context,false);
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(title: Text(title)),
          body: Column(
            children: <Widget>[
              Image.asset(imageUrl),
              Text(title),
              RaisedButton(
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context, true))
            ],
          ),
        ));
  }
}
