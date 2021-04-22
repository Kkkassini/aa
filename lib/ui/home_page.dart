import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/ui/main_body.dart';
import 'package:marketpulse_ui/ui/side_menu.dart';
import 'package:provider/provider.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';

import '../theme_config.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _counter = 0;
  bool status = false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    // The number 600 here is a common breakpoint for a typical 7-inch tablet.
    final isTablet = shortestSide > 600;
    if (isTablet) {
      return
//        ThemeSwitchingArea(
//        child:
        SafeArea(
          child: Material(
            child: Container(
              child: Row(
                children: <Widget>[

//              ThemeSwitcher(
//                builder: (context) {
//                return
//                  Checkbox(
//                value: ChangeThemeProvider().value == ChangeThemeProvider().pinkTheme,
//                onChanged: (needPink) {
////                ThemeSwitcher.of(context).changeTheme(
////                theme: needPink ? pinkTheme : lightTheme,
////                );
////                },
////                );
//                },
//                ),
////              ThemeSwitcher(
////                builder: (context) {
////                  return
//                    Checkbox(
//                    value: ChangeThemeProvider().value == ChangeThemeProvider().darkBlueTheme,
//                    onChanged: (needDarkBlue) {
////                      ThemeSwitcher.of(context).changeTheme(
////                        theme: needDarkBlue ? darkBlueTheme : lightTheme,
////                      );
//                    },
////                  );
////                },
//              ),
////              ThemeSwitcher(
////                builder: (context) {
////                  return
//                    Checkbox(
//                    value: ChangeThemeProvider().value == ChangeThemeProvider().halloweenTheme,
//                    onChanged: (needBlue) {
////                      ThemeSwitcher.of(context).changeTheme(
////                        theme: needBlue ? halloweenTheme : lightTheme,
////                      );
//
//                    },
////                  );
////                },
//              ),
                  Flexible(
                    child: MainBody(),
                    flex: 4,
                  ),
                ],
              ),
            ),
          ),
//        ),
      );
    } else {
      return Container(
        child: Center(
          child: Text("You are On a Phone"),
        ),
      );
    }
  }
}
