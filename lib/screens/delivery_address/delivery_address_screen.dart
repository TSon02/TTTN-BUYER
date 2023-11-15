import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/providers/order_details_provider.dart';
import 'package:trendy_treasures/screens/auth_screen/shipping_address_screen/cubit/address_cubit.dart';
import 'package:trendy_treasures/screens/auth_screen/shipping_address_screen/widgets/address_item.dart';
import 'package:trendy_treasures/screens/delivery_address/widgets/product_item.dart';
import 'package:trendy_treasures/screens/payment_screen/payment_screen.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';
import 'package:trendy_treasures/widgets/custom_button_widget.dart';
import 'package:trendy_treasures/widgets/loader.dart';
import 'package:trendy_treasures/widgets/subtitle_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class DeliveryAddressScreen extends StatefulWidget {
  const DeliveryAddressScreen({super.key});

  static BlocProvider<AddressCubit> provider() {
    return BlocProvider(
      create: (context) {
        return AddressCubit();
      },
      child: const DeliveryAddressScreen(),
    );
  }

  @override
  State<DeliveryAddressScreen> createState() => _DeliveryAddressScreenState();
}

class _DeliveryAddressScreenState extends State<DeliveryAddressScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<AddressCubit>().getListAddress(context: context);
    // ignore: use_build_context_synchronously
  }

  int? _index;

  @override
  Widget build(BuildContext context) {
    final orderProvider =
        Provider.of<OrderDetailsProvider>(context, listen: false);

    log(orderProvider.list.toString());
    log(orderProvider.orderProducts.toString());
    return WillPopScope(
      onWillPop: () async {
        for (var i = 0; i < orderProvider.orderProducts.length; i++) {
          orderProvider.updateOrderProduct(index: i, coupon: null);
        }
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const SizedBox(),
            backgroundColor: Colors.white,
            elevation: 1,
            flexibleSpace: AppBarWidget(
              isPop: true,
              ctx: context,
              onClick: () {},
            ),
          ),
          body: BlocBuilder<AddressCubit, AddressState>(
            builder: (context, state) {
              // log(cartProducts.toString());
              switch (state.data!.status) {
                case StatusType.loading:
                  return const Loader();
                case StatusType.loaded:
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleTextWidget(
                            title: 'Delivery Address',
                            fontSize: 20,
                          ),
                          SizedBox(
                            height: 250,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _index = index;
                                      orderProvider.setShippingInformation(
                                          address:
                                              state.data!.listAdress[index]);

                                      log(orderProvider.address.toRawJson());
                                    });
                                  },
                                  child: Stack(children: [
                                    ShippingItem(
                                      shippingInformation:
                                          state.data!.listAdress[index],
                                    ),
                                    if (_index == index)
                                      const Align(
                                        alignment: Alignment.centerRight,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.green,
                                          child: Icon(
                                            Icons.done,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                  ]),
                                );
                              },
                              itemCount: state.data!.listAdress.length,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          const TitleTextWidget(
                            title: 'Product Item',
                            fontSize: 16,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          for (var i = 0;
                              i < orderProvider.orderProducts.length;
                              i++)
                            ProductItem(
                              product: orderProvider.orderProducts[i],
                              coupons: orderProvider.list[i].coupons,
                              index: i,
                            ),

                          // const SizedBox(
                          //   height: 12,
                          // ),
                          // const TitleTextWidget(
                          //   title: 'Coupon Code',
                          //   fontSize: 16,
                          // ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SubTitleWidget(
                                    subTitle: 'Total Price',
                                    fontSize: 10,
                                  ),
                                  TitleTextWidget(
                                    title:
                                        '\$${context.watch<OrderDetailsProvider>().totalPrice}',
                                    fontSize: 20,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: CustomButtonWidget(
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                title: 'Place Order',
                                onClick: () {
                                  if (_index == null) {
                                    UIHelpers.showSnackBar(
                                        context: context,
                                        message: 'Please choose your address');
                                  } else {
                                    PersistentNavBarNavigator.pushNewScreen(
                                      context,
                                      screen: PaymentScreen.provider(),
                                      withNavBar:
                                          false, // OPTIONAL VALUE. True by default.
                                      pageTransitionAnimation:
                                          PageTransitionAnimation.cupertino,
                                    );
                                  }
                                },
                              ),
                            )
                          ]),
                          const SizedBox(
                            height: 20,
                          )
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
