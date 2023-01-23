import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TO_DO: borrar home
    // MenuOption(
    //   route: 'home',
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    //   icon: Icons.home_max_rounded,
    // ),
    MenuOption(
      route: 'listview1',
      name: 'listview1 tipo 1',
      screen: const ListView1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'listview2',
      name: 'listview1 tipo 2',
      screen: const ListView2Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'alerta',
      name: 'Alertas',
      screen: const AlertScreen(),
      icon: Icons.notification_important_outlined,
    ),
    MenuOption(
      route: 'card',
      name: 'Card',
      screen: const CardScreen(),
      icon: Icons.credit_card_sharp,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Avatar',
      screen: const AvatarScreen(),
      icon: Icons.contacts_rounded,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Screen',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outlined,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Inputs Screen',
      screen: const InputsScreen(),
      icon: Icons.type_specimen_sharp,
    ),
    MenuOption(
      route: 'screen',
      name: 'Slider and Checks Screen',
      screen: const SliderScreen(),
      icon: Icons.slideshow_sharp,
    ),
    MenuOption(
      route: 'listView',
      name: 'InfiniteScrool & Pull to refresh',
      screen: const ListViewScreen(),
      icon: Icons.build_circle_outlined,
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (p0) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
