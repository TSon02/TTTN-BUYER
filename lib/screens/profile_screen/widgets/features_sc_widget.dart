import 'package:flutter/material.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/feature_item_widget.dart';

class FeatureScWidgets extends StatelessWidget {
  const FeatureScWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
      ),
      child: Column(
        children: [
          FeatureItemWidget(
              function: () {},
              iconData: Icons.question_mark_outlined,
              featureName: 'FAQs'),
          FeatureItemWidget(
              function: () {
                // PersistentNavBarNavigator.pushNewScreen(
                //   context,
                //   screen: OrderScreen.provider(),
                //   withNavBar: false,
                //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                // );
              },
              iconData: Icons.privacy_tip,
              featureName: 'Privacy Policy'),
        ],
      ),
    );
  }
}
