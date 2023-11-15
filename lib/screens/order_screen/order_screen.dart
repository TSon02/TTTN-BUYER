import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/screens/order_screen/cubit/order_cubit.dart';
import 'package:trendy_treasures/screens/order_screen/widgets/order_item.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures/utils/list.dart';
import 'package:trendy_treasures/widgets/loader.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  static BlocProvider<OrderCubit> provider() {
    return BlocProvider(
      create: (context) {
        return OrderCubit();
      },
      child: const OrderScreen(),
    );
  }

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> with AfterLayoutMixin {
  int statusIndex = 0;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<OrderCubit>().getMyOrders(context);
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
          body: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TitleTextWidget(
                        title: 'My Order',
                        fontSize: 20,
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < myOrderStatus.length; i++)
                            InkWell(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () {
                                setState(() {
                                  statusIndex = i;

                                  context.read<OrderCubit>().getOrdersByStatus(
                                      status: myOrderStatus[i]);
                                });
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(right: 5, left: 5),
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: statusIndex == i
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ),
                                child: Text(
                                  myOrderStatus[i],
                                  style: TextStyle(
                                    color: statusIndex == i
                                        ? Colors.white
                                        : Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      )
                    ]),
              ),
              BlocBuilder<OrderCubit, OrderState>(
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
                      if (state.data!.orders.isEmpty) {
                        return const Center(
                          heightFactor: 15,
                          child: Text(
                            'Order empty',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        );
                      }
                      return Expanded(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.only(
                              right: 24, left: 24, top: 8, bottom: 16),
                          itemCount: state.data!.ordersByStatus.length,
                          itemBuilder: (context, index) {
                            return OrderItemWidget(
                                order: state.data!.ordersByStatus[index]);
                          },
                        ),
                      );
                    default:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                  }
                },
              ),
            ],
          )),
    );
  }
}
