import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui_challenge/config/theme.dart';

import '../widgets.dart';

class FilterSelectableVisibleOption<T> extends StatelessWidget {
  final Map<T, Widget> children;
  final ValueChanged<T> onSelected;
  final String title;

  const FilterSelectableVisibleOption(
      {Key key, this.onSelected, this.children, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        OpenFlutterBlockSubtitle(title: title),
        SizedBox(
          height: AppSizes.sidePadding,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(
              vertical: AppSizes.sidePadding,
              horizontal: AppSizes.sidePadding),
          color: AppColors.white,
          child: Wrap(
            spacing: AppSizes.sidePadding,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: children
                .map((key, widget) => MapEntry(
                    key,
                    InkWell(
                      child: widget,
                      onTap: () {
                        onSelected(key);
                      },
                    )))
                .values
                .toList(growable: false),
          ),
        )
      ],
    );
  }
}
