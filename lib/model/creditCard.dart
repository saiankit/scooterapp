import 'package:flutter/material.dart';
import 'package:scooterapp/utilities/styling.dart';

class CreditCardModel {
  final int digits;
  final String bankName;
  final String expiryDate;
  final Color color;

  CreditCardModel({
    required this.digits,
    required this.bankName,
    required this.expiryDate,
    required this.color,
  });
}

List<CreditCardModel> creditCardItems = [
  CreditCardModel(
    digits: 3728,
    bankName: 'acioxbank',
    expiryDate: '02/30',
    color: AppTheme.textBlackColor,
  ),
  CreditCardModel(
    digits: 1234,
    bankName: 'nexusbank',
    expiryDate: '01/28',
    color: AppTheme.textBlackColor,
  ),
  CreditCardModel(
    digits: 6542,
    bankName: 'acioxbank',
    expiryDate: '02/30',
    color: AppTheme.textBlackColor,
  ),
  CreditCardModel(
    digits: 9642,
    bankName: 'nexusbank',
    expiryDate: '01/28',
    color: AppTheme.textBlackColor,
  ),
];
