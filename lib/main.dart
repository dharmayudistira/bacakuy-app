import 'package:bacakuy_app/preferences/preferences_helper.dart';
import 'package:bacakuy_app/provider/preferences_provider.dart';
import 'package:bacakuy_app/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PreferencesProvider(
            preferencesHelper: PreferencesHelper(
              sharedPreferences: SharedPreferences.getInstance(),
            )
          )
        ),
      ],
        child: Consumer<PreferencesProvider>(
            builder: (context, provider, child){
              return MaterialApp(
                title: 'Flutter Demo',
                theme: provider.themeData,
                initialRoute: Splash.routeName,
                routes: {
                  Splash.routeName:(context) => const Splash(),
                },
              );
            }
        ),
    );
  }
}
