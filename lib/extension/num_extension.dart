extension NumHelper on num {
  String formatCurrency() {
    final num = this ~/ 1000000;
    return '\$${num}MM';
  }
}
