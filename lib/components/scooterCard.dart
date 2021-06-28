import 'package:flutter/material.dart';
import 'package:scooterapp/model/scooter.dart';
import 'package:scooterapp/screens/descriptionScreen.dart';
import 'package:scooterapp/utilities/size_config.dart';
import 'package:scooterapp/utilities/styling.dart';

class ScooterCard extends StatelessWidget {
  final Scooter scooter;

  const ScooterCard({Key? key, required this.scooter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 2.7 * SizeConfig.heightMultiplier),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DescriptionScreen(scooter: scooter),
            ),
          );
        },
        child: Container(
          height: 28 * SizeConfig.heightMultiplier,
          decoration: BoxDecoration(
            borderRadius: AppTheme.borderRadius,
            color: scooter.color,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 3.25 * SizeConfig.heightMultiplier,
              top: 3.25 * SizeConfig.heightMultiplier,
              bottom: 2.25 * SizeConfig.heightMultiplier,
              right: 1.25 * SizeConfig.heightMultiplier,
            ),
            child: Stack(
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
                    Text(
                      '\$' + scooter.price.toString(),
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      'day',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(scooter.imageURL),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
