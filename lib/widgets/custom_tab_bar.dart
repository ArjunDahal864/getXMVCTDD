import 'package:flutter/material.dart';
import 'package:foody/utils/colors.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar(
      {Key key,
      @required this.icons,
      @required this.selectedIndex,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicatorPadding: EdgeInsets.zero,
        indicator: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: AppColor.primaryDeepRed, width: 3.0))),
        tabs: icons
            .asMap()
            .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(e,color: i==selectedIndex ? AppColor.primaryDeepRed : Colors.black45),
                  
                )))
            .values
            .toList(),
        onTap: onTap);
  }
}