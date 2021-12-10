class Transaction {
  final String id;
  final double value;
  final String title;
  final String descricao;
  final DateTime date;

  Transaction({
    required this.id,
    required this.title,
    required this.value,
    required this.descricao,
    required this.date,
  });
}
