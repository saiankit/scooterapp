import 'package:flutter/material.dart';
import 'package:scooterapp/components/avatar.dart';
import 'package:scooterapp/components/dropDown.dart';
import 'package:scooterapp/components/scooterCard.dart';
import 'package:scooterapp/model/scooter.dart';
import 'package:scooterapp/utilities/size_config.dart';
import 'package:scooterapp/utilities/styling.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppTheme.screenPadding,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Avatar(),
                  CustomDropDown(),
                ],
              ),
              SizedBox(height: 6 * SizeConfig.heightMultiplier),
              Text(
                'Select your Ride',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
              Text(
                'Best self drive eco friendly scooter in town. Enjoy ride and go green',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 2.5 * SizeConfig.heightMultiplier),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: false,
                  itemCount: scooterData.length,
                  itemBuilder: (context, index) {
                    return ScooterCard(scooter: scooterData[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
