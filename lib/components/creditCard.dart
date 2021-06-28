import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scooterapp/model/creditCard.dart';
import 'package:scooterapp/utilities/size_config.dart';
import 'package:scooterapp/utilities/styling.dart';

class CreditCard extends StatelessWidget {
  final CreditCardModel creditCardModel;

  const CreditCard({Key? key, required this.creditCardModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2 * SizeConfig.heightMultiplier),
      child: Container(
        height: 22 * SizeConfig.heightMultiplier,
        width: 72.4 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: creditCardModel.color,
          borderRadius: AppTheme.borderRadius,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 1.33 * SizeConfig.heightMultiplier,
              horizontal: 4.8 * SizeConfig.widthMultiplier),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        creditCardModel.bankName,
                        style: const TextStyle(color: Colors.white),
                      ),
                      SvgPicture.asset(
                        'assets/visa.svg',
                        color: Colors.white,
                        width: 7 * SizeConfig.heightMultiplier,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '**** **** **** ${creditCardModel.digits}',
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Bernarr Domink',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 2 * SizeConfig.heightMultiplier),
                  Text(
                    creditCardModel.expiryDate,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
