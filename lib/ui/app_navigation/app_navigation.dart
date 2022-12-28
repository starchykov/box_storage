import 'package:box_storage/ui/screens/boxes_screen/boxes_screen.dart';
import 'package:box_storage/ui/screens/dashboard_screen/dashboard_screen.dart';
import 'package:box_storage/ui/screens/home_screen/home_screen.dart';
import 'package:box_storage/ui/screens/settings_screen/settings_screen.dart';
import 'package:flutter/cupertino.dart';

abstract class AppNavigationRoutes {
  static const homeWidget = '/';
}

class AppNavigation {
  final Map<String, Widget Function(BuildContext)> routes = <String, Widget Function(BuildContext)>{
    AppNavigationRoutes.homeWidget: (context) => HomeScreen.render(),
  };

  final List<Widget> bottomNavigationScreens = <Widget>[
    DashboardScreen.render(),
    BoxesScreen.render(),
    SettingsScreen.render(),
  ];
}
