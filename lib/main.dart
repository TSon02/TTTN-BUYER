// import 'package:bmprogresshud/bmprogresshud.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/get_it.dart';
import 'package:trendy_treasures/providers/address_provider.dart';
import 'package:trendy_treasures/providers/coupons.dart';
import 'package:trendy_treasures/providers/order_details_provider.dart';
import 'package:trendy_treasures/providers/search_provider.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
// import 'package:flutter/services.dart';
import 'package:trendy_treasures/route_generator.dart';
import 'package:bmprogresshud/bmprogresshud.dart';

void main() {
  getIt.registerLazySingleton(() => DataRepository());
  runApp(
    // ChangeNotifierProvider(
    //   create: (context) {
    //     return UserProvider();
    //   },
    //   child: const MyApp(),
    // ),

    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return UserProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return AddressProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return OrderDetailsProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return CouponsProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return SearchProvider();
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     // statusBarColor: Colors.white,
  //     // statusBarBrightness: Brightness.dark,
  //     ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ProgressHud(
      isGlobalHud: true,
      child: MaterialApp(
        // home: const MenuScreen(key: ValueKey('Value')),
        theme: ThemeData(fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: '/',
      ),
    );
  }
}
