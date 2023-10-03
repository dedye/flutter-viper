import 'package:flutter/material.dart';
import 'package:viper_architecture_pattern/modules/home/view/home_view.dart';
import 'package:viper_architecture_pattern/router/routes_name.dart';

class PlaceHolderRouter
{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
