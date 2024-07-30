class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<FeeData> fee = [
  FeeData('90871', 'november', '8 Nov 2024', 'Pending', '980\$', 'PAY NOW'),
  FeeData('90870', 'September', '8 Sep 2024', 'Paid', '1080\$', 'DOWNLOAD'),
  FeeData('908869', 'Agustus', '8 Aug 2024', 'Paid', '950\$', 'DOWNLOAD'),
];
