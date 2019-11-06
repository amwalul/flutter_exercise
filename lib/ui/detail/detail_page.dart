import 'package:flutter/material.dart';
import 'package:flutter_exercise/model/item.dart';

class DetailPage extends StatelessWidget {
  final Item item;

  DetailPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(item.image),
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}