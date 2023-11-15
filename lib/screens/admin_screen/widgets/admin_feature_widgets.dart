import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures/screens/addProduct_screen/add_product_screen.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/feature_item_widget.dart';

class AdminFeatureWidgets extends StatelessWidget {
  const AdminFeatureWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.8), width: 1),
      ),
      child: Column(
        children: [
          FeatureItemWidget(
              function: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: AddProductScreen.provider(),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              iconData: Icons.add,
              featureName: 'Add Products'),
        ],
      ),
    );
  }
}
