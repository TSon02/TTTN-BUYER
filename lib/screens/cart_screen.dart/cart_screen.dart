import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/providers/order_details_provider.dart';
import 'package:trendy_treasures/screens/cart_screen.dart/cubit/cart_cubit.dart';
import 'package:trendy_treasures/screens/cart_screen.dart/widgets/cart_button_widget.dart';
import 'package:trendy_treasures/screens/cart_screen.dart/widgets/cart_item.dart';
import 'package:trendy_treasures/screens/delivery_address/delivery_address_screen.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures/widgets/loader.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';
import 'package:after_layout/after_layout.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  static BlocProvider<CartCubit> provider() {
    return BlocProvider(
      create: (context) {
        return CartCubit();
      },
      child: const CartScreen(),
    );
  }

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<CartCubit>().getCartProducts(context);
  }

  @override
  Widget build(BuildContext context) {
    log(' dsaaaaaaaaaaaaaaaaaaaaaaaaaa           aaaaa');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          backgroundColor: Colors.white,
          elevation: 1,
          flexibleSpace: AppBarWidget(
            isPop: false,
            onClick: () {},
          ),
        ),
        backgroundColor: Colors.white,
        body: RefreshIndicator(
          displacement: 20,
          edgeOffset: 0,
          onRefresh: () async {
            await context.read<CartCubit>().getCartProducts(context);
          },
          child: BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              log('aaa');

              switch (state.data!.status) {
                case StatusType.loading:
                  return const Loader();
                case StatusType.loaded:
                  return state.data!.cartProducts.isEmpty
                      ? const Center(
                          child: SingleChildScrollView(
                            physics: AlwaysScrollableScrollPhysics(),
                            child: Text(
                              'Cart is empty',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                        )
                      : SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: TitleTextWidget(
                                    title: 'My Cart',
                                    fontSize: 20,
                                  ),
                                ),
                                ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    // log(state.data!.cartProducts[index]
                                    //     .toRawJson());
                                    return CartItem(
                                      reload: () async {
                                        log('call api after delete cart item');
                                        await context
                                            .read<CartCubit>()
                                            .getCartProducts(context);
                                        log('call api after delete cart item');
                                      },
                                      index: index,
                                      product: state.data!.cartProducts[index],
                                    );
                                  },
                                  itemCount: state.data!.cartProducts.length,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total (${state.data!.cartProducts.length} item) :',
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TitleTextWidget(
                                      title: '\$${state.data!.totalPrice}',
                                      fontSize: 22,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CartButtonWidget(
                                  onNav: () {
                                    PersistentNavBarNavigator.pushNewScreen(
                                      context,
                                      screen: DeliveryAddressScreen.provider(),
                                      withNavBar:
                                          false, // OPTIONAL VALUE. True by default.
                                      pageTransitionAnimation:
                                          PageTransitionAnimation.cupertino,
                                    ).whenComplete(() async {
                                      await context
                                          .read<CartCubit>()
                                          .getCartProducts(context);
                                    });
                                  },
                                  title: 'Proceed to Checkout',
                                ),
                                const SizedBox(
                                  height: 80,
                                ),
                              ],
                            ),
                          ),
                        );
                default:
                  return const Loader();
              }
            },
          ),
        ),
      ),
    );
  }
}
