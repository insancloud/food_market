part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;

  Transaction({
    required this.id,
    required this.food,
    required this.quantity,
    required this.total,
    required this.dateTime,
    required this.status,
    required this.user,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, food, quantity, total, dateTime, status, user];
}

List<Transaction> mockTransaction = [
  Transaction(
      id: 1,
      food: MockFoods[1],
      quantity: 10,
      total: (MockFoods[1].price * 10 * 1.1).round() + 5000,
      dateTime: DateTime.now(),
      status: TransactionStatus.cancelled,
      user: mockUser),

       Transaction(
      id: 2,
      food: MockFoods[4],
      quantity: 10,
      total: (MockFoods[4].price * 10 * 1.1).round() + 5000,
      dateTime: DateTime.now(),
      status: TransactionStatus.on_delivery,
      user: mockUser),
      
];
