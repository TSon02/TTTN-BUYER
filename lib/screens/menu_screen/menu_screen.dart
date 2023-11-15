import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures/models/others/route_argument.dart';
import 'package:trendy_treasures/route_generator.dart';
import 'package:trendy_treasures/screens/addProduct_screen/add_product_screen.dart';
import 'package:trendy_treasures/screens/cart_screen.dart/cart_screen.dart';
import 'package:trendy_treasures/screens/categories_screen/categories_screen.dart';
import 'package:trendy_treasures/screens/category_products/category_products.dart';
import 'package:trendy_treasures/screens/home_screen/home_screen.dart';
import 'package:trendy_treasures/screens/notification_screen/notification_screen.dart';
import 'package:trendy_treasures/screens/profile_screen/profile_screen.dart';
import 'package:trendy_treasures/screens/search_screen.dart/search_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({required Key key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(context,
        controller: controller,
        screens: _buildScreens(controller),
        navBarHeight: 80,
        items: _navBarsItems(controller),
        confineInSafeArea: true,
        // backgroundColor: Colors.grey[300]!, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: const NavBarDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36), topRight: Radius.circular(36)),
            colorBehindNavBar: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: -3,
                color: Colors.grey,
              ),
            ]),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 500),
        ),
        navBarStyle:
            NavBarStyle.style1 // Choose the nav bar style with this property.
        );
  }

  List<Widget> _buildScreens(PersistentTabController controller) {
    return [
      HomeScreen.provider(controller),
      SearchScreen.provider(),
      CartScreen.provider(),
      const NotificationScreen(),
      const ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(
      PersistentTabController controller) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: (settings) {
            log(settings.name!);
            switch (settings.name) {
              case RouteGenerator.categoriesScreen:
                return MaterialPageRoute(
                  builder: (context) {
                    return CategoriesScreen.provider();
                  },
                  settings: settings,
                );

              case RouteGenerator.categoryProductsScreen:
                return MaterialPageRoute(
                  builder: (context) {
                    return CategoryProducts(
                        arguments: settings.arguments! as RouteArgument);
                  },
                  settings: settings,
                );

              default:
                return MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen(
                      persistentTabController: controller,
                    );
                  },
                  settings: settings,
                );
            }
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.search),
        title: ("Search"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.cart),
        title: ("Cart"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.bell),
        title: ("News"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: (settings) {
            log(settings.name!);
            switch (settings.name) {
              case RouteGenerator.addProductScreen:
                return MaterialPageRoute(
                  builder: (context) {
                    return const AddProductScreen();
                  },
                  settings: settings,
                );
              // case RouteGenerator.shippingAdressScreen:
              //   return MaterialPageRoute(
              //     builder: (context) {
              //       return const ShippingAddressScreen();
              //     },
              //     settings: settings,
              //   );

              default:
                return MaterialPageRoute(
                  builder: (context) {
                    return const ProfileScreen();
                  },
                  settings: settings,
                );
            }
          },
        ),
      ),
    ];
  }
}
