import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures/screens/add_new_card_screen/widgets/card_input_formatter.dart';
import 'package:trendy_treasures/screens/add_new_card_screen/widgets/card_month_input_formatter.dart';
import 'package:trendy_treasures/screens/add_new_card_screen/widgets/master_card.dart';
import 'package:trendy_treasures/screens/add_new_card_screen/widgets/my_painter.dart';
import 'package:trendy_treasures/screens/my_card_screen/cubit/card_cubit.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures/utils/list.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  static BlocProvider<CardCubit> provider() {
    return BlocProvider(
      create: (context) {
        return CardCubit();
      },
      child: const AddNewCardScreen(),
    );
  }

  @override
  State<AddNewCardScreen> createState() => AddNewCardScreenState();
}

class AddNewCardScreenState extends State<AddNewCardScreen> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardHolderNameController =
      TextEditingController();
  final TextEditingController cardExpiryDateController =
      TextEditingController();
  final TextEditingController cardCvvController = TextEditingController();

  final FlipCardController flipCardController = FlipCardController();

  bool _isBehind = false;

  String? selectedBank;

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
            onClick: () {},
          ),
        ),
        backgroundColor: Colors.white,
        body: BlocListener<CardCubit, CardState>(
          listener: (context, state) async {
            if (state.data!.error != "") {
              if (state.data!.error.contains('Bank') ||
                  state.data!.error.contains('Card') ||
                  state.data!.error.contains('Name') ||
                  state.data!.error.contains('Expired') ||
                  state.data!.error.contains('invalid') ||
                  state.data!.error.contains('CVV') ||
                  state.data!.error.contains('CVV is')) {
                UIHelpers.showSnackBar(
                    context: context,
                    message: state.data!.error.replaceAll(RegExp(r',.*$'), ""));
              } else if (state.data!.error != "Success") {
                await AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  title: 'Successfully',
                  desc: state.data!.error.replaceAll(RegExp(r',.*$'), ""),
                  btnOkOnPress: () async {
                    Navigator.pop(context);
                  },
                ).show().then((value) {
                  cardCvvController.clear();
                  cardExpiryDateController.clear();
                  cardHolderNameController.clear();
                  cardNumberController.clear();
                  selectedBank = null;

                  setState(() {});
                });
              } else {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.error,
                  animType: AnimType.rightSlide,
                  title: 'Error',
                  desc: state.data!.error.replaceAll(RegExp(r',.*$'), ""),
                  btnOkOnPress: () {},
                ).show();
              }
            }
          },
          child: BlocBuilder<CardCubit, CardState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 12),

                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TitleTextWidget(
                          title: 'Add New Card',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Image.asset(
                              'assets/images/credit_card/bg-light.png',
                              fit: BoxFit.cover),
                        ),
                        FlipCard(
                            fill: Fill.fillFront,
                            direction: FlipDirection.HORIZONTAL,
                            controller: flipCardController,
                            onFlip: () {
                              print('Flip');
                            },
                            flipOnTouch: true,
                            onFlipDone: (isBehind) {
                              print('isBehind: $isBehind');
                              _isBehind = isBehind;
                            },
                            front: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: buildCreditCard(
                                bank: selectedBank?.split('-').first ?? 'Bank',
                                color: const Color(0xffa42903),
                                cardExpiration:
                                    cardExpiryDateController.text.isEmpty
                                        ? "XX/XX"
                                        : cardExpiryDateController.text,
                                cardHolder:
                                    cardHolderNameController.text.isEmpty
                                        ? "CARD HOLDER"
                                        : cardHolderNameController.text
                                            .toUpperCase(),
                                cardNumber: cardNumberController.text.isEmpty
                                    ? "XXXX XXXX XXXX XXXX"
                                    : cardNumberController.text,
                              ),
                            ),
                            back: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Card(
                                elevation: 4.0,
                                color: const Color(0xffa42903),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Container(
                                  height: 230,
                                  padding: const EdgeInsets.only(
                                      left: 16.0, right: 16.0, bottom: 22.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(height: 0),
                                      const Text(
                                        'https://www.paypal.com',
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 11,
                                        ),
                                      ),
                                      Container(
                                        height: 45,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.2,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      CustomPaint(
                                        painter: MyPainter(),
                                        child: SizedBox(
                                          height: 35,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.2,
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                cardCvvController.text.isEmpty
                                                    ? "XXX"
                                                    : cardCvvController.text,
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 21,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 11,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(height: 40),
                    //
                    Container(
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: MediaQuery.of(context).size.width / 1.12,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButton<String>(
                        itemHeight: 50,
                        borderRadius: BorderRadius.circular(12),
                        isExpanded: true,
                        underline: const SizedBox(),
                        value: selectedBank, // Giá trị được chọn
                        hint: const Text('Select bank'),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedBank = newValue!;
                          });
                        },
                        items: dummyCard.map((card) {
                          return DropdownMenuItem<String>(
                            value: card['bank'],
                            child: Row(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          card['image'],
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ), // Khoảng cách giữa hình ảnh và văn bản

                                Expanded(
                                  child: Text(
                                    card['bank'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    //
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 1.12,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        controller: cardNumberController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          hintText: 'Card Number',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          prefixIcon: Icon(
                            Icons.credit_card,
                            color: Colors.grey,
                          ),
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(16),
                          CardInputFormatter(),
                        ],
                        onTap: () {
                          setState(() {
                            Future.delayed(const Duration(milliseconds: 300),
                                () {
                              if (_isBehind == true) {
                                flipCardController.toggleCard();
                              }
                            });
                          });
                        },
                        onChanged: (value) {
                          var text =
                              value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                          setState(() {
                            cardNumberController.value =
                                cardNumberController.value.copyWith(
                                    text: text,
                                    selection: TextSelection.collapsed(
                                        offset: text.length),
                                    composing: TextRange.empty);
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 1.12,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        controller: cardHolderNameController,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          hintText: 'Full Name',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                        ],
                        onTap: () {
                          setState(() {
                            Future.delayed(const Duration(milliseconds: 300),
                                () {
                              if (_isBehind == true) {
                                flipCardController.toggleCard();
                              }
                            });
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            cardHolderNameController.value =
                                cardHolderNameController.value.copyWith(
                                    text: value,
                                    selection: TextSelection.collapsed(
                                        offset: value.length),
                                    composing: TextRange.empty);
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 2.4,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextFormField(
                            controller: cardExpiryDateController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              hintText: 'MM/YY',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                              prefixIcon: Icon(
                                Icons.calendar_today,
                                color: Colors.grey,
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                              CardDateInputFormatter(),
                            ],
                            onTap: () {
                              setState(() {
                                Future.delayed(
                                    const Duration(milliseconds: 300), () {
                                  if (_isBehind == true) {
                                    flipCardController.toggleCard();
                                  }
                                });
                              });
                            },
                            onChanged: (value) {
                              var text =
                                  value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                              setState(() {
                                cardExpiryDateController.value =
                                    cardExpiryDateController.value.copyWith(
                                        text: text,
                                        selection: TextSelection.collapsed(
                                            offset: text.length),
                                        composing: TextRange.empty);
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 14),
                        Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 2.4,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextFormField(
                            controller: cardCvvController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              hintText: 'CVV',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(3),
                            ],
                            onTap: () {
                              setState(() {
                                Future.delayed(
                                    const Duration(milliseconds: 300), () {
                                  if (_isBehind != true) {
                                    flipCardController.toggleCard();
                                  }
                                });
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                int length = value.length;
                                if (length == 4 ||
                                    length == 9 ||
                                    length == 14) {
                                  cardNumberController.text = '$value ';
                                  cardNumberController.selection =
                                      TextSelection.fromPosition(TextPosition(
                                          offset: value.length + 1));
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20 * 2),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width / 1.12, 55),
                      ),
                      onPressed: () {
                        Future.delayed(
                          const Duration(milliseconds: 300),
                          () async {
                            if (_isBehind) {
                              flipCardController.toggleCard();
                            }
                            await context.read<CardCubit>().addNewCard(
                                bank: selectedBank,
                                cardNumber: cardNumberController.text,
                                fullName: cardHolderNameController.text,
                                expiredTime: cardExpiryDateController.text,
                                cvv: cardCvvController.text,
                                context: context);
                          },
                        );
                      },
                      child: Text(
                        'Add Card'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
