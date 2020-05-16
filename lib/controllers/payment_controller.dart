import 'package:bookstore/models/base_book.dart';

class Order {
  List<BaseBook> books;

  Order() {
    books = <BaseBook>[];
  }

  void addBook(BaseBook book) {
    books.add(book);
  }

  double calculateOrder() {
    // ignore: omit_local_variable_types
    double total = 0;
    // ignore: omit_local_variable_types
    for (BaseBook book in books) {
      total = total + book.calculatePrice();
    }
    return total;
  }
}


class Payable{

  // ignore: missing_return
  bool pay(double price){

  }
}

class PaypalPayment implements Payable{

  @override
  bool pay(double price) {
    // TODO: implement pay
    return null;
  }

}

class StripPayment implements Payable{
  @override
  bool pay(double price) {
    // TODO: implement pay
    return null;
  }


}

class PaymentController {
  Order order;
  Payable payment;

  PaymentController(this.order, this.payment);

  bool payForOrder(){
    return payment.pay(order.calculateOrder());

  }

}
