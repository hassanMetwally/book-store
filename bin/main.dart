import 'package:bookstore/controllers/payment_controller.dart';
import 'package:bookstore/models/digital_book.dart';
import 'package:bookstore/models/printed_book.dart';

void main() {
  DigitalBook digitalBook = DigitalBook(
      'My New Book',
      'My life Story',
      10.00,
      "Hassan Metwally",
      "20/06/2019",
      "dsfjksdkjfkjjksdflkoiierg",
      "http://metwally.com/hassan.pdf");

  PrintedBook printedBook = PrintedBook("My New Book", "My Life Story", 20.00,
      "Hassan Metwally", "25/10/2019", "sjsdfkjjkdsgfkjdsf", 5.00);

  double digitalBookPrice = digitalBook.calculatePrice();
  double printedBookPrice = printedBook.calculatePrice();

  print('digital book price: $digitalBookPrice');
  print('printed book price: $printedBookPrice');

  Order order = Order();
  order.addBook(digitalBook);
  order.addBook(printedBook);

  PaypalPayment paypalPayment = PaypalPayment();

  PaymentController paymentController = PaymentController(order, paypalPayment);
  bool response = paymentController.payForOrder();
  if(response){

  }else{

  }
}
