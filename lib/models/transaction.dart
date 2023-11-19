part of 'models.dart';

enum TransactionStatus { delivered, onDelivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;

  const Transaction({
    required this.id,
    required this.food,
    required this.quantity,
    required this.total,
    required this.dateTime,
    required this.status,
    required this.user,
  });

  Transaction copyWith({
    int? id,
    Food? food,
    int? quantity,
    int? total,
    DateTime? dateTime,
    TransactionStatus? status,
    User? user,
    
  }) {
    return Transaction(
      id: id ?? this.id,
      food: food ?? this.food,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      dateTime: dateTime ?? this.dateTime,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, food, quantity, total, dateTime, status, user];
}

List<Transaction> mockTransaction = [
  Transaction(
      id: 1,
      food: mockFoods[1],
      quantity: 10,
      total: (mockFoods[1].price * 10 * 1.1).round() + 5000,
      dateTime: DateTime.now(),
      status: TransactionStatus.pending,
      user: mockUser[0]),
  Transaction(
      id: 2,
      food: mockFoods[4],
      quantity: 10,
      total: (mockFoods[4].price * 10 * 1.1).round() + 5000,
      dateTime: DateTime.now(),
      status: TransactionStatus.onDelivery,
      user: mockUser[1]),
  Transaction(
      id: 3,
      food: mockFoods[2],
      quantity: 11,
      total: (mockFoods[2].price * 11 * 1.1).round() + 5000,
      dateTime: DateTime.now(),
      status: TransactionStatus.delivered,
      user: mockUser[2]),
];
