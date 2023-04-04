import 'package:flutter/material.dart';
import 'package:notifier_app/Helpers/NavigationHelper/Routes.dart';

import 'Helpers/NavigationHelper/NavigationHelper.dart';

//Create a class with a name App which extends StatelessWidget
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    //return MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      // Set the onGenerateRoute and pass the function signature of the initial page as homeScreenConfig and the initialPageData as null.
      onGenerateRoute: AppRoute(
        initialPage: Pages.homeScreenConfig,
        initialPageData: null,
      ).onGenerateRoute,
    );
  }
}