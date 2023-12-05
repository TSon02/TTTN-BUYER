import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/models/credit_card/response.dart/credit_cart.dart';
import 'package:trendy_treasures/providers/order_details_provider.dart';
import 'package:trendy_treasures/screens/add_new_card_screen/add_new_card_screen.dart';
import 'package:trendy_treasures/screens/cart_screen.dart/cubit/cart_cubit.dart';
import 'package:trendy_treasures/screens/my_card_screen/cubit/card_cubit.dart';
import 'package:trendy_treasures/screens/payment_screen/cubit/payment_cubit.dart';
import 'package:trendy_treasures/screens/payment_screen/widgets/card_item.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';
import 'package:trendy_treasures/widgets/custom_button_widget.dart';
import 'package:trendy_treasures/widgets/loader.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

enum PaymentMethod { cash, card }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CardCubit>(
          create: (BuildContext context) => CardCubit(),
        ),
        BlocProvider<PaymentCubit>(
          create: (BuildContext context) => PaymentCubit(),
        ),
        BlocProvider<CartCubit>(
          create: (BuildContext context) => CartCubit(),
        ),
      ],
      child: const PaymentScreen(),
    );
  }

  @override
  State<PaymentScreen> createState() => PaymentScreenState();
}

class PaymentScreenState extends State<PaymentScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<CardCubit>().getMyCards(context: context);
  }

  int isSelected = -1;
  PaymentMethod? _paymentMethod;

  @override
  Widget build(BuildContext context) {
    final orderProvider =
        Provider.of<OrderDetailsProvider>(context, listen: false);

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
        body: BlocListener<PaymentCubit, PaymentState>(
          listener: (context, state) async {
            if (state.data!.orders.isNotEmpty) {
              await AwesomeDialog(
                context: context,
                dialogType: DialogType.success,
                animType: AnimType.rightSlide,
                title: 'Successfully',
                desc: state.data!.error,
                btnOkOnPress: () {
                  // PersistentNavBarNavigator.pushDynamicScreen(
                  //   context,
                  //   screen: MenuScreen(),
                  //   withNavBar: true,
                  // );

                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (_) => CartScreen()), // Tab thứ 2
                  //   (route) => false, // Xóa toàn bộ lịch sử đường dẫn
                  // );

                  Navigator.popUntil(context, (route) {
                    // Kiểm tra xem màn hình hiện tại có phải là màn hình ban đầu không
                    return route.isFirst;
                  });
                },
              ).show();
            }
          },
          child: BlocBuilder<CardCubit, CardState>(
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
                  if (state.data!.cards.isEmpty) {
                    print(state.data!.cards.length.toString());
                    return const Center(
                      child: Text(
                        'No products',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    );
                  } else {
                    log(state.data!.cards.length.toString());
                    return RefreshIndicator(
                      onRefresh: () async {
                        await context
                            .read<CardCubit>()
                            .getMyCards(context: context);
                      },
                      child: SingleChildScrollView(
                        physics: _paymentMethod == PaymentMethod.cash
                            ? const BouncingScrollPhysics()
                            : const AlwaysScrollableScrollPhysics(),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TitleTextWidget(
                                title: 'Payment',
                                fontSize: 20,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              RadioListTile<PaymentMethod>(
                                title: const Row(
                                  children: [
                                    Text('Cash on Delivery'),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.attach_money,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                value: PaymentMethod.cash,
                                selected: _paymentMethod == PaymentMethod.cash,
                                groupValue: _paymentMethod,
                                onChanged: (PaymentMethod? value) {
                                  setState(() {
                                    _paymentMethod = value;
                                    // isSelected = -1;
                                    orderProvider.setPayment(
                                      payment: Payment(
                                          paymentMethod:
                                              PaymentMethod.cash.name),
                                    );
                                  });
                                },
                              ),
                              RadioListTile<PaymentMethod>(
                                title: const Row(
                                  children: [
                                    Text('Credit Card Payment'),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Icon(
                                      Icons.credit_card,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                selected: _paymentMethod == PaymentMethod.card,
                                value: PaymentMethod.card,
                                groupValue: _paymentMethod,
                                onChanged: (PaymentMethod? value) {
                                  setState(() {
                                    _paymentMethod = value;
                                    orderProvider.setPayment(
                                      payment: Payment(
                                        paymentMethod: PaymentMethod.card.name,
                                      ),
                                    );
                                  });
                                },
                              ),
                              _paymentMethod == PaymentMethod.card
                                  ? Column(
                                      children: [
                                        for (var i = 0;
                                            i < state.data!.cards.length;
                                            i++)
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isSelected = i;
                                                orderProvider.setPayment(
                                                  payment: Payment(
                                                    paymentMethod:
                                                        PaymentMethod.card.name,
                                                    cardId:
                                                        state.data!.cards[i].id,
                                                  ),
                                                );
                                              });
                                            },
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8),
                                              child: CardItem(
                                                  card: state.data!.cards[i],
                                                  isSelected: isSelected == i),
                                            ),
                                          ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            PersistentNavBarNavigator
                                                .pushNewScreen(
                                              context,
                                              screen:
                                                  AddNewCardScreen.provider(),
                                              withNavBar:
                                                  false, // OPTIONAL VALUE. True by default.
                                              pageTransitionAnimation:
                                                  PageTransitionAnimation
                                                      .cupertino,
                                            ).whenComplete(() async {
                                              await context
                                                  .read<CardCubit>()
                                                  .getMyCards(context: context);
                                            });
                                          },
                                          child: DottedBorder(
                                            borderType: BorderType.RRect,
                                            radius: const Radius.circular(10),
                                            color: Colors.grey,
                                            dashPattern: const [10, 4],
                                            strokeCap: StrokeCap.round,
                                            child: Container(
                                              width: double.infinity,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8),
                                              // height: 300,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 45,
                                                    height: 45,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: Colors.grey),
                                                    ),
                                                    child: const Icon(
                                                      Icons.add,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 15),
                                                  const Text(
                                                    'Add Card',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : const SizedBox(),
                              const SizedBox(
                                height: 24,
                              ),
                              BlocBuilder<CartCubit, CartState>(
                                builder: (context, state) {
                                  return BlocBuilder<PaymentCubit,
                                      PaymentState>(
                                    builder: (context, state) {
                                      return Center(
                                        child: CustomButtonWidget(
                                          backgroundColor: Colors.black,
                                          textColor: Colors.white,
                                          title: 'Confirm',
                                          onClick: () async {
                                            // log(orderProvider
                                            //     .payment.paymentMethod.name.runtimeType
                                            //     .toString());
                                            if (_paymentMethod != null) {
                                              if (orderProvider.payment
                                                          .paymentMethod ==
                                                      PaymentMethod.card.name &&
                                                  orderProvider
                                                          .payment.cardId ==
                                                      null) {
                                                UIHelpers.showSnackBar(
                                                    context: context,
                                                    type: SnackBarType.ERROR,
                                                    message:
                                                        'Please choose credit card');
                                              } else {
                                                await context
                                                    .read<PaymentCubit>()
                                                    .createOrder(
                                                        products: orderProvider
                                                            .orderProducts,
                                                        shippingInfo:
                                                            orderProvider
                                                                .address,
                                                        paymentInfo:
                                                            orderProvider
                                                                .payment,
                                                        context: context);

                                                // orderProvider.logg();
                                              }
                                            } else {
                                              UIHelpers.showSnackBar(
                                                  context: context,
                                                  type: SnackBarType.ERROR,
                                                  message:
                                                      'Please choose payment method');
                                            }

                                            // orderProvider.logg();
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }

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
