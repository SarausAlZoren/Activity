class Gas {
  int no;
  String gasType;
  double price;

  Gas({this.no, this.gasType, this.price});
  @override
  String toString() {
    return 'Gas{no: $no, Gas Type: $gasType, Price: $price}';
  }
}

var gasTypes = <Gas>[
  Gas(no: 1, gasType: "Leaded", price: 45.75),
  Gas(
    no: 2,
    gasType: "Unleaded",
    price: 43.18,
  ),
  Gas(
    no: 3,
    gasType: "Diesel",
    price: 37.12,
  ),
  Gas(
    no: 4,
    gasType: "Bio-Diesel ",
    price: 48.03,
  ),
];

class purchase {
  int no;
  String paymentType;

  purchase({this.no, this.paymentType});
  @override
  String toString() {
    return 'purchase{no: $no, Purchase: $paymentType}';
  }
}

var paymentTypes = <purchase>[
  purchase(
    no: 1,
    paymentType: "by Cash",
  ),
  purchase(
    no: 2,
    paymentType: "by Liter",
  ),
];
