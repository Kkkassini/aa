import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/widgets/chart_goals.dart';
import 'package:marketpulse_ui/widgets/datatable_industry.dart';
import 'package:marketpulse_ui/widgets/details_list.dart';
import 'package:marketpulse_ui/widgets/line_chart.dart';
import 'package:marketpulse_ui/widgets/team_members.dart';
import 'package:marketpulse_ui/widgets/top_bar.dart';

import '../theme_config.dart';


class MainBody extends StatefulWidget {
  MainBody({Key key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}
class _MainBodyState extends State<MainBody> {
  Widget _mainContainer() => Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[TeamMembers(), DetailsList(), LineChartSample2()],
          ),
        ),
      );


  @override
  Widget build(BuildContext context) {
    return
//      ThemeSwitchingArea(child:
      Container(
      //color: Colors.grey[100],
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[TopBar(), Expanded(child: _mainContainer()),

        ],
      ),
//    )
    );
  }
}
