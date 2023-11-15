import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/screens/auth_screen/shipping_address_screen/cubit/address_cubit.dart';
import 'package:trendy_treasures/screens/auth_screen/shipping_address_screen/widgets/address_item.dart';
import 'package:trendy_treasures/screens/create_address_screen/create_address_screen.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures/widgets/loader.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  static BlocProvider<AddressCubit> provider() {
    return BlocProvider(
      create: (context) {
        return AddressCubit();
      },
      child: const ShippingAddressScreen(),
    );
  }

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<AddressCubit>().getListAddress(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const SizedBox(),
          backgroundColor: Colors.white,
          elevation: 1,
          flexibleSpace: AppBarWidget(
            iconData: Icons.add,
            isPop: true,
            onClick: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: CreateOrUpdateAddressScreen.provider(),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              ).then((value) async {
                await context
                    .read<AddressCubit>()
                    .getListAddress(context: context);
              });
            },
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            return await context
                .read<AddressCubit>()
                .getListAddress(context: context);
          },
          child: BlocBuilder<AddressCubit, AddressState>(
            builder: (context, state) {
              switch (state.data!.status) {
                case StatusType.loading:
                  return const Loader();

                case StatusType.loaded:
                  return state.data!.listAdress.isEmpty
                      ? const Center(
                          child: Text(
                            'Address is empty, Please add new',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TitleTextWidget(
                                  title: 'Address Shipping',
                                  fontSize: 20,
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        PersistentNavBarNavigator.pushNewScreen(
                                          context,
                                          screen: CreateOrUpdateAddressScreen
                                              .provider(
                                                  shippingInformation: state
                                                      .data!.listAdress[index]),
                                          withNavBar:
                                              false, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation.cupertino,
                                        ).then((value) async {
                                          await context
                                              .read<AddressCubit>()
                                              .getListAddress(context: context);
                                        });
                                      },
                                      child: ShippingItem(
                                          shippingInformation:
                                              state.data!.listAdress[index]),
                                    );
                                  },
                                  itemCount: state.data!.listAdress.length,
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
