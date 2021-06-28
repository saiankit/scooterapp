import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scooterapp/utilities/size_config.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.5 * SizeConfig.heightMultiplier,
      width: 5.5 * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        color: Color(0xffF1EC85),
        borderRadius: BorderRadius.all(
          Radius.circular(1.3 * SizeConfig.heightMultiplier),
        ),
      ),
      child: SvgPicture.asset('assets/avatar.svg'),
    );
  }
}
