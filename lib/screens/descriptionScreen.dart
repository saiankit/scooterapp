import 'package:flutter/material.dart';
import 'package:scooterapp/components/creditCard.dart';
import 'package:scooterapp/components/datePicker.dart';
import 'package:scooterapp/model/creditCard.dart';
import 'package:scooterapp/model/scooter.dart';
import 'package:scooterapp/utilities/size_config.dart';
import 'package:scooterapp/utilities/styling.dart';

class DescriptionScreen extends StatelessWidget {
  final Scooter scooter;

  const DescriptionScreen({Key? key, required this.scooter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scooter.color,
      appBar: AppBar(
        backgroundColor: scooter.color,
        elevation: 0,
        iconTheme: IconThemeData(color: AppTheme.textBlackColor),
      ),
      body: Padding(
        padding: AppTheme.screenPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      scooter.name,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      'Top Spped ${scooter.maxSpeed} km/h',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Text(
                      'Range ${scooter.range} km',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 11 * SizeConfig.heightMultiplier,
                  child: Image.asset(scooter.imageURL),
                )
              ],
            ),
            CustomDatePicker(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier,
                horizontal: 4 * SizeConfig.widthMultiplier,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: AppTheme.borderRadius2,
                  color: Colors.black.withOpacity(0.075),
                ),
                child: Padding(
                  padding: EdgeInsets.all(6 * SizeConfig.widthMultiplier),
                  child: Center(
                    child: Text(
                      'Total Payable : \$ 104',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 28 * SizeConfig.heightMultiplier,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: creditCardItems.length,
                itemBuilder: (context, index) {
                  return CreditCard(creditCardModel: creditCardItems[index]);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier,
                horizontal: 4 * SizeConfig.widthMultiplier,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: AppTheme.borderRadius2,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier,
                    horizontal: 2.7 * SizeConfig.widthMultiplier,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'See Detailed Breakup',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.info, size: 14.0))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier,
                horizontal: 4 * SizeConfig.widthMultiplier,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: AppTheme.borderRadius,
                  color: Colors.black,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.8 * SizeConfig.widthMultiplier,
                    horizontal: 2.7 * SizeConfig.heightMultiplier,
                  ),
                  child: Center(
                    child: Text(
                      'Pay and Book',
                      style: TextStyle(
                        fontSize: 1.8 * SizeConfig.heightMultiplier,
                        color: scooter.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
