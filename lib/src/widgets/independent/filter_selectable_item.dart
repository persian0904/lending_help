import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui_challenge/config/theme.dart';

class FilterSelectableItem extends StatelessWidget {
  final bool isSelected;
  final String text;

  const FilterSelectableItem(
      {Key key, this.isSelected = false, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.linePadding),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            border: Border.all(
                color: isSelected
                    ? AppColors.red
                    : AppColors.lightGray),
            color: isSelected ? AppColors.red : AppColors.white),
        padding: EdgeInsets.symmetric(
            vertical: AppSizes.sidePadding, horizontal: AppSizes.sidePadding),
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                color:
                    isSelected ? AppColors.white : AppColors.black,
                fontWeight: FontWeight.w300,
              ),
        ),
      )
    );
  }
}
