import 'package:flutter/material.dart';
import 'package:scooterapp/utilities/size_config.dart';
import 'package:scooterapp/utilities/styling.dart';

class CustomDropDown extends StatefulWidget {
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String city = "Hyderabad";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.5 * SizeConfig.heightMultiplier,
      width: 22 * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
          color: AppTheme.greyDropdown,
          borderRadius: BorderRadius.all(
              Radius.circular(1.3 * SizeConfig.heightMultiplier))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DropdownButton<String>(
            dropdownColor: AppTheme.greyDropdown,
            onChanged: (String? value) {
              setState(() {
                city = value!;
              });
            },
            icon: Container(),
            underline: Container(),
            style: Theme.of(context).textTheme.headline5,
            value: city,
            items: <String>[
              "Hyderabad",
              "Bangalore",
              "Delhi",
              "Chennai",
              "Mumbai"
            ].map<DropdownMenuItem<String>>((String cityName) {
              return DropdownMenuItem<String>(
                value: cityName,
                child: Text(
                  cityName,
                  style: Theme.of(context).textTheme.headline5,
                ),
              );
            }).toList(),
          ),
          Container(
              decoration: BoxDecoration(
                color: AppTheme.textWhiteColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_drop_down,
              )),
        ],
      ),
    );
  }
}
