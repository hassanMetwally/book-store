double tax = 0.1;

abstract class BaseBook { // it's normal class but "abstract" to make its using forbidden
  String title;
  String description;
  double price;
  String author;
  String publishedData;
  String isbn;


  BaseBook(this.title, this.description, this.price, this.author,
      this.publishedData, this.isbn);

  double calculatePrice() {
    return price + (price * tax);
  }

  void printName(); //abstract method => to make the children have to override on it
}