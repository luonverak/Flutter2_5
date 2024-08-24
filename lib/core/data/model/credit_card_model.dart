class CreditCardModel {
  final int id;
  final String number;
  final String image;
  CreditCardModel({
    required this.id,
    required this.number,
    required this.image,
  });
}

final List<CreditCardModel> listCreditCard = [
  CreditCardModel(
    id: 1,
    number: "*****1292",
    image: "asset/image/credit_card.jpg",
  ),
  CreditCardModel(
    id: 2,
    number: "*****4292",
    image: "asset/image/credit_card.jpg",
  ),
  CreditCardModel(
    id: 3,
    number: "*****1392",
    image: "asset/image/credit_card.jpg",
  ),
  CreditCardModel(
    id: 4,
    number: "*****9692",
    image: "asset/image/credit_card.jpg",
  ),
];

