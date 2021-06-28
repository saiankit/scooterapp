import 'package:flutter/material.dart';
import 'package:scooterapp/utilities/size_config.dart';
import 'package:scooterapp/utilities/styling.dart';

class CustomDatePicker extends StatefulWidget {
  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  late DateTime firstDate;
  late DateTime secondDate;
  void selectFirstDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: firstDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != firstDate) {
      setState(() {
        firstDate = picked;
      });
    }
  }

  void selectSecondDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: secondDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != secondDate) {
      setState(() {
        secondDate = picked;
      });
    }
  }

  @override
  void initState() {
    firstDate = DateTime.now();
    secondDate = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.3 * SizeConfig.heightMultiplier),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => selectFirstDate(context),
            child: Container(
              decoration: BoxDecoration(
                color: AppTheme.textWhiteColor,
                borderRadius: AppTheme.borderRadius2,
              ),
              child: Padding(
                padding: EdgeInsets.all(1.5 * SizeConfig.heightMultiplier),
                child: Text(
                  '${firstDate.day} ${months[firstDate.month - 1]} ${firstDate.year}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
          Icon(Icons.arrow_right),
          InkWell(
            onTap: () => selectSecondDate(context),
            child: Container(
              decoration: BoxDecoration(
                color: AppTheme.textWhiteColor,
                borderRadius: AppTheme.borderRadius2,
              ),
              child: Padding(
                padding: EdgeInsets.all(1.5 * SizeConfig.heightMultiplier),
                child: Text(
                  '${secondDate.day} ${months[secondDate.month - 1]} ${secondDate.year}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> months = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];
