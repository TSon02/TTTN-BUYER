import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/screens/add_new_card_screen/add_new_card_screen.dart';
import 'package:trendy_treasures/screens/my_card_screen/cubit/card_cubit.dart';
import 'package:trendy_treasures/screens/my_card_screen/widgets/card_item.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures/widgets/loader.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class MyCardScreen extends StatefulWidget {
  const MyCardScreen({Key? key}) : super(key: key);

  static BlocProvider<CardCubit> provider() {
    return BlocProvider(
      create: (context) {
        return CardCubit();
      },
      child: const MyCardScreen(),
    );
  }

  @override
  State<MyCardScreen> createState() => MyCardScreenState();
}

class MyCardScreenState extends State<MyCardScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<CardCubit>().getMyCards(context: context);
  }

  @override
  Widget build(BuildContext context) {
    // final orderProvider =
    //     Provider.of<OrderDetailsProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          backgroundColor: Colors.white,
          elevation: 1,
          flexibleSpace: AppBarWidget(
            isPop: true,
            iconData: Icons.add,
            onClick: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: AddNewCardScreen.provider(),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              ).whenComplete(() async {
                await context.read<CardCubit>().getMyCards(context: context);
              });
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: BlocBuilder<CardCubit, CardState>(
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
                  return const Center(
                    child: Text(
                      'No Card',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  );
                } else {
                  log(state.data!.cards[0].toRawJson());
                  return SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleTextWidget(
                            title: 'My Card',
                            fontSize: 20,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                child: Dismissible(
                                  key: ValueKey(state.data!.cards[index]),
                                  confirmDismiss: (direction) async {
                                    bool isDelete = false;
                                    await AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.question,
                                      animType: AnimType.rightSlide,
                                      title: 'delete',
                                      desc:
                                          'Are you sure want to delete this credit card?',
                                      btnOkOnPress: () async {
                                        isDelete = true;
                                        await context
                                            .read<CardCubit>()
                                            .delCardById(
                                                id: state.data!.cards[index].id,
                                                context: context);
                                      },
                                      btnCancelOnPress: () {
                                        isDelete = false;
                                      },
                                    ).show();

                                    return isDelete;
                                  },
                                  background: Container(
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.only(right: 24),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: CardItem(
                                    card: state.data!.cards[index],
                                  ),
                                ),
                              );
                            },
                            itemCount: state.data!.cards.length,
                          ),
                          // for (var card in state.data!.cards)
                          //   Container(
                          //     margin: const EdgeInsets.symmetric(vertical: 8),
                          //     child: Dismissible(
                          //       key: ValueKey(card),
                          //       confirmDismiss: (direction) async {
                          //         bool isDelete = false;
                          //         await AwesomeDialog(
                          //           context: context,
                          //           dialogType: DialogType.question,
                          //           animType: AnimType.rightSlide,
                          //           title: 'delete',
                          //           desc:
                          //               'Are you sure want to delete this credit card?',
                          //           btnOkOnPress: () async {
                          //             isDelete = true;
                          //             await context
                          //                 .read<CardCubit>()
                          //                 .delCardById(
                          //                     id: card.id, context: context);
                          //           },
                          //           btnCancelOnPress: () {
                          //             isDelete = false;
                          //           },
                          //         ).show();

                          //         return isDelete;
                          //       },
                          //       background: Container(
                          //         alignment: Alignment.centerRight,
                          //         padding: const EdgeInsets.only(right: 24),
                          //         decoration: BoxDecoration(
                          //           color: Colors.black,
                          //           borderRadius: BorderRadius.circular(12),
                          //         ),
                          //         child: const Icon(
                          //           Icons.delete,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //       child: CardItem(
                          //         card: card,
                          //       ),
                          //     ),
                          //   )
                        ],
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
    );
  }
}
