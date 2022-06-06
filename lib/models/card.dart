import 'package:business_pay/models/transaction.dart';

class CreditCard {
  bool enabled;
  bool favorite;
  String cardNumber;
  String cardHolder;
  double available;
  double limit;
  List<Transaction> transactions;

  CreditCard({
    required this.enabled,
    required this.favorite,
    required this.cardNumber,
    required this.cardHolder,
    required this.available,
    required this.limit,
    required this.transactions,
  });
}
