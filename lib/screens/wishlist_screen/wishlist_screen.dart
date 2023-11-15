import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/screens/home_screen/widgets/grid_category_products_widget.dart';
import 'package:trendy_treasures/screens/home_screen/widgets/product_widget.dart';
import 'package:trendy_treasures/screens/order_screen/cubit/order_cubit.dart';
import 'package:trendy_treasures/screens/order_screen/widgets/order_item.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures/screens/wishlist_screen/cubit/wishlist_cubit.dart';
import 'package:trendy_treasures/utils/list.dart';
import 'package:trendy_treasures/widgets/loader.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  static BlocProvider<WishlistCubit> provider() {
    return BlocProvider(
      create: (context) {
        return WishlistCubit();
      },
      child: const WishlistScreen(),
    );
  }

  @override
  State<WishlistScreen> createState() => WishlistScreenState();
}

class WishlistScreenState extends State<WishlistScreen> with AfterLayoutMixin {
  int statusIndex = 0;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<WishlistCubit>().getMyWishlist(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: const SizedBox(),
            backgroundColor: Colors.white,
            elevation: 1,
            flexibleSpace: AppBarWidget(
              isPop: true,
              onClick: () {},
            ),
          ),
          backgroundColor: Colors.white,
          body: BlocBuilder<WishlistCubit, WishlistState>(
            builder: (context, state) {
              switch (state.data!.status) {
                case StatusType.loading:
                  return const Loader();

                case StatusType.error:
                  return Center(
                    child: Text(
                      state.data!.error,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  );

                case StatusType.loaded:
                  if (state.data!.wishlist.isEmpty) {
                    return const Center(
                      // heightFactor: 15,
                      child: Text(
                        'Wishlist empty',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    );
                  }
                  return SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleTextWidget(
                            title: 'My Wishlist',
                            fontSize: 20,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          GridCategoryProducts(products: state.data!.wishlist)
                        ],
                      ),
                    ),
                  );
                default:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
              }
            },
          )),
    );
  }
}
