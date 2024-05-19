class TransactionModel {
  final String title;
  final double amount;
  final String date;
  final bool isIncome;

  const TransactionModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.isIncome});
}
