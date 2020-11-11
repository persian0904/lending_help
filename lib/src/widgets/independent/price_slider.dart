import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui_challenge/config/theme.dart';

import '../widgets.dart';

class OpenFlutterPriceRangeSlider extends StatelessWidget {
  final double max;
  final double min;
  final double selectedMin;
  final double selectedMax;
  final String label;
  final Function(RangeValues value) onChanged;

  const OpenFlutterPriceRangeSlider(
      {Key key,
      @required this.max,
      @required this.min,
      @required this.label,
      @required this.onChanged,
      @required this.selectedMin,
      @required this.selectedMax})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width - AppSizes.sidePadding * 2;
    var _theme = Theme.of(context);
    return Column(children: <Widget>[
      OpenFlutterBlockSubtitle(title: label, width: width),
      Padding(
        padding: EdgeInsets.only(bottom: AppSizes.sidePadding),
      ),
      Container(
          padding: EdgeInsets.symmetric(vertical: AppSizes.sidePadding),
          color: AppColors.white,
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.sidePadding),
              child: Row(
                children: <Widget>[
                  Container(
                      width: width / 2,
                      alignment: Alignment.centerLeft,
                      child: Text(selectedMin.toStringAsFixed(0) + ' Triệu',
                          style: TextStyle(
                              inherit: true, fontWeight: FontWeight.w300, fontSize: 14.0, color: Colors.grey))),
                  Container(
                      width: width / 2,
                      alignment: Alignment.centerRight,
                      child: Text(selectedMax.toStringAsFixed(0) + ' Triệu',
                          style: TextStyle(
                              inherit: true, fontWeight: FontWeight.w300, fontSize: 14.0, color: Colors.grey)))
                ],
              ),
            ),
            RangeSlider(
              divisions: max.toInt() - min.toInt(),
              activeColor: AppColors.red,
              inactiveColor: AppColors.lightGray,
              max: max,
              min: min,
              onChangeStart: onChanged,
              onChangeEnd: onChanged,
              values: RangeValues(selectedMin, selectedMax),
              onChanged: onChanged,
            )
          ]))
    ]);
  }
}
