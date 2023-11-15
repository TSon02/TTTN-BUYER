import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/screens/auth_screen/shipping_address_screen/shipping_address_screen.dart';
import 'package:trendy_treasures/screens/my_card_screen/my_card_screen.dart';
import 'package:trendy_treasures/screens/order_screen/order_screen.dart';
import 'package:trendy_treasures/screens/personal_details_screen/personal_details_screen.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/feature_item_widget.dart';
import 'package:trendy_treasures/screens/wishlist_screen/wishlist_screen.dart';

class FeatureWidgets extends StatelessWidget {
  const FeatureWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
      ),
      child: Column(
        children: [
          // userProvider.user.type == "admin"
          //     ? FeatureItemWidget(
          //         function: () {
          //           PersistentNavBarNavigator.pushNewScreen(
          //             context,
          //             screen: AdminScreen.provider(),
          //             withNavBar: false,
          //             pageTransitionAnimation:
          //                 PageTransitionAnimation.cupertino,
          //           );
          //         },
          //         iconData: Icons.admin_panel_settings,
          //         featureName: 'Admin')
          //     : const SizedBox(),
          FeatureItemWidget(
              function: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: PersonalDetailsScreen.provider(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              iconData: Icons.person,
              featureName: 'Personal Details'),
          FeatureItemWidget(
              function: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: OrderScreen.provider(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              iconData: Icons.shopping_bag_rounded,
              featureName: 'My Order'),
          FeatureItemWidget(
              function: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: WishlistScreen.provider(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              iconData: Icons.favorite_outlined,
              featureName: 'My Favourites'),
          FeatureItemWidget(
              function: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: ShippingAddressScreen.provider(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              iconData: Icons.local_shipping,
              featureName: 'Shipping Adress'),
          FeatureItemWidget(
              function: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: MyCardScreen.provider(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              iconData: Icons.credit_card_rounded,
              featureName: 'My Cards'),
          FeatureItemWidget(
              function: () {},
              iconData: Icons.settings,
              featureName: 'Settings'),
        ],
      ),
    );
  }
}
