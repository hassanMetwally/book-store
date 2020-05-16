import 'package:bookstore/models/advertisement.dart';
import 'package:bookstore/models/downloadable.dart';

import 'base_book.dart';

class DigitalBook extends  BaseBook with Advertisement implements Downloadable{

  String downloadURL;

  DigitalBook(String title, String description, double price, String author,
      String publishedDate, String isbn, String downloadURL)
      :super(title, description, price, author, publishedDate, isbn) {
    this.downloadURL = downloadURL;
  }

  @override
  double calculatePrice() {
    return price ;
  }

  @override
  void printName() {
    // TODO: implement printName
  }

  @override
  void download() {
    // TODO: implement download
  }

}