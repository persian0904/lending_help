import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui_challenge/src/models/term.dart';
import 'package:flutter_wallet_ui_challenge/src/widgets/independent/block_subtitle.dart';
import 'package:flutter_wallet_ui_challenge/src/widgets/independent/custom_button.dart';
import 'package:flutter_wallet_ui_challenge/src/widgets/independent/filter_selectable_item.dart';
import 'package:flutter_wallet_ui_challenge/src/widgets/independent/filter_selectable_visible_option.dart';
import 'package:flutter_wallet_ui_challenge/src/widgets/independent/price_slider.dart';
import '../../../config/theme.dart';

Map<String, String> buyitems = {
  'Pagar Conta': 'assets/images/qr-code.png',
  'Recarregar Celular': 'assets/images/credito.png',
  'Google Play': 'assets/images/google-play.png',
  'Spotify': 'assets/images/spotify.png',
  'Netflix': 'assets/images/netflix.png',
  'Uber': 'assets/images/uber.png',
};

class RegisterLoanScreen extends StatefulWidget {
  @override
  _RegisterLoanScreenState createState() => _RegisterLoanScreenState();
}

class _RegisterLoanScreenState extends State<RegisterLoanScreen> {

  double minAmount;
  double maxAmount;
  HashMap<TermModel, bool> selectableTerms;

  @override
  void initState() {
    minAmount = 0;
    maxAmount = 100;
    selectableTerms = new HashMap<TermModel, bool>();
    Map<TermModel, bool> map = {
      new TermModel(12, '12 Tháng'):false,
      new TermModel( 6, ' 6 Tháng'):false,
      new TermModel( 9, ' 9 Tháng'):false,
      new TermModel( 3, ' 3 Tháng'):false,
      new TermModel( 1, ' 1 Tháng'):true,
    };
    print(map);
    selectableTerms.addAll(map);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width - AppSizes.sidePadding * 2;
    var _theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng ký khoản vay'),
        backgroundColor: AppColors.red,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            OpenFlutterPriceRangeSlider(
              selectedMin: 0,
              selectedMax: maxAmount,
              label: 'Số tiền vay',
              min: 0,
              max: 500,
              onChanged: _changeSelectedPrice,
            ),
          ] + [
            FilterSelectableVisibleOption<TermModel>(
              title: 'Vay trong bao lâu?',
              children:
              selectableTerms.map((term, isSelected) => MapEntry(
                  term,
                  FilterSelectableItem(
                    text: term.name,
                    isSelected: isSelected,
                  ))),
              onSelected: _onTermSelected,
            ),
          ] + [
            OpenFlutterBlockSubtitle(title: 'Tạm tính'),
            Padding(
              padding: EdgeInsets.only(bottom: AppSizes.sidePadding),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: AppSizes.sidePadding),
                color: AppColors.white,
                child: Column(children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.sidePadding, vertical: AppSizes.sidePadding),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Số tiền vay',
                                  style: _theme.textTheme.subtitle2
                                      .copyWith(color: AppColors.black)),
                          Text('12 Triệu',
                              style: _theme.textTheme.subtitle2
                                  .copyWith(color: AppColors.black, fontWeight: FontWeight.bold))
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.sidePadding, vertical: AppSizes.sidePadding),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Tiền lãi',
                              style: _theme.textTheme.subtitle2
                                  .copyWith(color: AppColors.black)),
                          Text('2 Triệu',
                              style: _theme.textTheme.subtitle2
                                  .copyWith(color: AppColors.black, fontWeight: FontWeight.bold))
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.sidePadding, vertical: AppSizes.sidePadding),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Tổng tiền phải trả',
                              style: _theme.textTheme.subtitle2
                                  .copyWith(color: AppColors.black)),
                          Text('14 Triệu',
                              style: _theme.textTheme.subtitle2
                                  .copyWith(color: AppColors.black, fontWeight: FontWeight.bold))
                        ]),
                  )],
                )
            ),
            Padding(
              padding: EdgeInsets.only(bottom: AppSizes.sidePadding),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.sidePadding, vertical: AppSizes.sidePadding),
              width: double.infinity,
              color: AppColors.white,
              child: OpenFlutterButton(
                title: 'Đăng ký',
                width: 160,
                height: 48,
                onPressed: (() => print('Đăng ký')),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onTermSelected(TermModel value) {
    setState(() {
      selectableTerms[value] = !selectableTerms[value];
    });
  }

  void _changeSelectedPrice(RangeValues value) {
    setState(() {
      minAmount = value.start;
      maxAmount = value.end;
    });
  }
}
