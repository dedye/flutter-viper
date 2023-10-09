import 'package:flutter/material.dart';
import 'package:viper_architecture_pattern/modules/home/view/HomeView.dart';
import 'package:viper_architecture_pattern/router/RoutesName.dart';

class RouterNavigation
{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
