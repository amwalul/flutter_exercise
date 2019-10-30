import 'package:flutter_exercise/model/item.dart';

class DataDummy {
  static List<Item> generateDummyItems() {
    List<Item> items = List();

    items.add(Item("images/atletik.jpg", "Atletik"));
    items.add(Item("images/basket.jpg", "Basket"));
    items.add(Item("images/berkuda.jpg", "Berkuda"));
    items.add(Item("images/bulutangkis.jpg", "Bulu Tangkis"));
    items.add(Item("images/panah.jpg", "Panahan"));
    items.add(Item("images/sepakbola.jpg", "Sepak Bola"));
    items.add(Item("images/tenis.jpg", "Tenis"));
    items.add(Item("images/tenismeja.jpeg", "Tenis Meja"));
    items.add(Item("images/tinju.jpg", "Tinju"));
    items.add(Item("images/voli.jpeg", "Voli"));

    return items;
  }
}