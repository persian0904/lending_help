import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui_challenge/src/models/credit_card_model.dart';
import 'package:flutter_wallet_ui_challenge/src/models/payment_model.dart';
import 'package:flutter_wallet_ui_challenge/src/models/user_model.dart';

List<CreditCardModel> getCreditCards() {
  List<CreditCardModel> creditCards = [];
  creditCards.add(CreditCardModel(
      "4616900007729988",
      "https://resources.mynewsdesk.com/image/upload/ojf8ed4taaxccncp6pcp.png",
      "06/23",
      "192"));
  creditCards.add(CreditCardModel(
      "3015788947523652",
      "https://resources.mynewsdesk.com/image/upload/ojf8ed4taaxccncp6pcp.png",
      "04/25",
      "217"));
  return creditCards;
}

List<UserModel> getUsersCard() {
  List<UserModel> userCards = [
    UserModel("Nguyễn Vịnh", "assets/images/users/NguyenVinh.jpg"),
    UserModel("Bùi Nhơn", "assets/images/users/BuiNhon.jpg"),
    UserModel("Nghiêm Tuấn", "assets/images/users/NghiemTuan.jpg"),
    UserModel("Nguyễn Thị A", "assets/images/users/FemalePerson.png"),
    UserModel("Nguyễn Thanh B", "assets/images/users/FemalePerson.png"),
    UserModel("Nguyễn Văn C", "assets/images/users/MalePerson.png"),
  ];

  return userCards;
}

List<PaymentModel> getPaymentsCard() {
  List<PaymentModel> paymentCards = [
    PaymentModel(Icons.receipt, Color(0xFFffd60f), "Vay của công ty BRG",
        "07-23", "20.04", 251.00, 1),
    PaymentModel(Icons.monetization_on, Color(0xFFff415f), "Đầu tư cho mr Trần Nhật Thăng",
        "07-23", "14.01", 64.00, -1),
    PaymentModel(Icons.location_city, Color(0xFF50f3e2), "Đầu tư cho mr Nguyễn Vịnh",
        "07-23", "10.04", 1151.00, -1),
    PaymentModel(Icons.train, Colors.green, "Đầu tư cho mr Lê Phúc Thịnh", "07-23",
        "09.04", 37.00, -1),
  ];

  return paymentCards;
}
