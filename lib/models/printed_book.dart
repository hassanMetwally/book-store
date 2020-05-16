
import 'package:bookstore/models/shippable.dart';

import 'advertisement.dart';
import 'base_book.dart';

class PrintedBook extends BaseBook with Advertisement implements Shippable{
  double shippingCost;

  PrintedBook(String title, String description, double price, String author,
      String publishDate, String isbn, double shippingCost)
      : super(title, description, price, author, publishDate, isbn) {
    this.shippingCost = shippingCost;
  }

  @override
  void printName() {
    // TODO: implement printName
  }

  @override
  void ship() {
    // TODO: implement ship
  }

}
