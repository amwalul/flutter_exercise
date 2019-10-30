import 'package:flutter/material.dart';
import 'package:flutter_exercise/model/item.dart';
import 'package:flutter_exercise/ui/detail/detail_page.dart';
import 'package:flutter_exercise/util/data_dummy.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = DataDummy.generateDummyItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
      ),
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return DetailPage(items[index]);
                  }
                ),
              );
            },
            child: Image.asset(items[index].image),
          );
        },
      ),
    );
  }
}