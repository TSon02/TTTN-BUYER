// ignore_for_file: library_private_types_in_public_api
// import 'dart:developer' as dev;
import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/models/address/response/address.dart';
import 'package:trendy_treasures/models/credit_card/response.dart/credit_cart.dart';
import 'package:trendy_treasures/providers/address_provider.dart';
import 'package:trendy_treasures/screens/create_address_screen/cubit/create_address_cubit.dart';
import 'package:trendy_treasures/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:dvhcvn/dvhcvn.dart' as dvhcvn;
import 'package:trendy_treasures/utils/ui_helpers.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class CreateOrUpdateAddressScreen extends StatefulWidget {
  const CreateOrUpdateAddressScreen({super.key, this.shippingInformation});
  final ShippingInformation? shippingInformation;

  static BlocProvider<CreateAddressCubit> provider(
      {ShippingInformation? shippingInformation}) {
    return BlocProvider(
      create: (context) {
        return CreateAddressCubit();
      },
      child: CreateOrUpdateAddressScreen(
        shippingInformation: shippingInformation,
      ),
    );
  }

  @override
  State<CreateOrUpdateAddressScreen> createState() =>
      _CreateOrUpdateAddressScreenState();
}

class _CreateOrUpdateAddressScreenState
    extends State<CreateOrUpdateAddressScreen> {
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _receiverController = TextEditingController();

  @override
  void initState() {
    if (widget.shippingInformation != null) {
      log('dsadsadsadsa');
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final addressProvider = context.read<AddressProvider>();

        if (widget.shippingInformation != null) {
          final listLevel1 = [...dvhcvn.level1s];

          final level1 = listLevel1.firstWhere(
            (address) => address.name == widget.shippingInformation!.level1,
          );

          final level2 = level1.children.firstWhere(
              (address) => address.name == widget.shippingInformation!.level2);

          final level3 = level2.children.firstWhere(
              (address) => address.name == widget.shippingInformation!.level3);

          addressProvider.level1 = level1;
          addressProvider.level2 = level2;
          addressProvider.level3 = level3;
          _streetController.text = widget.shippingInformation!.streetName;
          _receiverController.text = widget.shippingInformation!.receiver;
          _phoneController.text = widget.shippingInformation!.phoneNumber;
        }
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _streetController.dispose();
    _receiverController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.shippingInformation != null
        ? widget.shippingInformation!.toRawJson()
        : '');
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          if (widget.shippingInformation != null) {
            AddressProvider.of(context, listen: false).level1 = null;
          }
          return true;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: const SizedBox(),
            backgroundColor: Colors.white,
            elevation: 1,
            flexibleSpace: AppBarWidget(
              isPop: true,
              onClick: () {},
            ),
          ),
          body: BlocListener<CreateAddressCubit, CreateAddressState>(
            listener: (context, state) {
              if (state.data!.error != '') {
                if (state.data!.error.contains('Province') ||
                    state.data!.error.contains('District') ||
                    state.data!.error.contains('Ward') ||
                    state.data!.error.contains('Street') ||
                    state.data!.error.contains('Receiver') ||
                    state.data!.error.contains('Phone') ||
                    state.data!.error.contains('3') ||
                    state.data!.error.contains('invalid')) {
                  UIHelpers.showSnackBar(
                    context: context,
                    message: state.data!.error.replaceAll(RegExp(r',.*$'), ""),
                  );
                } else
                // state.data!.error.contains('Success')
                {
                  AwesomeDialog(
                    context: context,
                    dialogType: state.data!.response!.success == true
                        ? DialogType.success
                        : DialogType.error,
                    animType: AnimType.rightSlide,
                    title: state.data!.response!.success == true
                        ? 'Success'
                        : "Error",
                    desc: state.data!.error.replaceAll(RegExp(r',.*$'), ""),
                    btnOkOnPress: state.data!.response!.success == true
                        ? () {
                            _phoneController.clear();
                            _streetController.clear();
                            _receiverController.clear();
                            AddressProvider.of(context, listen: false).level1 =
                                null;

                            Navigator.pop(context);
                          }
                        : () {},
                  ).show();
                }
              }
            },
            child: BlocBuilder<CreateAddressCubit, CreateAddressState>(
              builder: (context, state) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      TitleTextWidget(
                        title: widget.shippingInformation != null
                            ? 'Update address'
                            : 'Add new address',
                        fontSize: 20,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Level1(),
                      const SizedBox(
                        height: 8,
                      ),
                      const Level2(),
                      const SizedBox(
                        height: 8,
                      ),
                      const Level3(),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.black,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'ex : 22 Võ Oanh',
                          label: const Text(
                            'Street name, House number',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        controller: _streetController,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.black,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'ex : Nguyen Van A',
                          label: const Text(
                            'Receiver',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        controller: _receiverController,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.black,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'ex : 0988552365',
                          label: const Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        controller: _phoneController,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: ButtonReset(
                              phoneController: _phoneController,
                              streetController: _streetController,
                              receiverController: _receiverController,
                            )),
                            Expanded(
                                child: ButtonDone(
                              phoneController: _phoneController,
                              streetController: _streetController,
                              receiverController: _receiverController,
                              shippingInformation: widget.shippingInformation,
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonReset extends StatelessWidget {
  const ButtonReset({
    super.key,
    required this.phoneController,
    required this.streetController,
    required this.receiverController,
  });
  final TextEditingController phoneController;
  final TextEditingController streetController;
  final TextEditingController receiverController;
  @override
  Widget build(BuildContext context) => TextButton(
      child: const Text('Reset'),
      onPressed: () {
        phoneController.clear();
        streetController.clear();
        receiverController.clear();
        return AddressProvider.of(context, listen: false).level1 = null;
      });
}

class ButtonDone extends StatelessWidget {
  const ButtonDone({
    super.key,
    required this.phoneController,
    required this.streetController,
    required this.receiverController,
    this.shippingInformation,
  });

  final TextEditingController phoneController;
  final TextEditingController streetController;
  final TextEditingController receiverController;
  final ShippingInformation? shippingInformation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: shippingInformation != null
            ? const Text('Update')
            : const Text('Done'),
        onPressed: () async {
          if (shippingInformation == null) {
            final data = AddressProvider.of(context, listen: false);

            await context.read<CreateAddressCubit>().createAddress(
                  context: context,
                  level1: data.level1,
                  level2: data.level2,
                  level3: data.level3,
                  streetName: streetController.text,
                  receiver: receiverController.text,
                  phoneNumber: phoneController.text,
                );
          } else {
            final data = AddressProvider.of(context, listen: false);

            log(data.level1.toString());
            log(data.level2.toString());
            log(data.level3.toString());

            await context.read<CreateAddressCubit>().updateAddress(
                  context: context,
                  level1: data.level1,
                  level2: data.level2,
                  level3: data.level3,
                  streetName: streetController.text,
                  receiver: receiverController.text,
                  phoneNumber: phoneController.text,
                  id: shippingInformation!.id,
                );
          }
        });
  }
}

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) => Consumer<AddressProvider>(
        builder: (context, data, _) => ListTile(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text('Province / City'),
          subtitle: Text(data.level1?.name ?? 'Tap to select Province / City.'),
          onTap: () => _select1(context, data),
        ),
      );

  void _select1(BuildContext context, AddressProvider data) async {
    final selected =
        await _select<dvhcvn.Level1>(context, dvhcvn.level1s, header: '');

    if (selected != null) data.level1 = selected;
  }
}

class Level2 extends StatefulWidget {
  const Level2({super.key});

  @override
  _Level2State createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final data = AddressProvider.of(context);
    if (data.latestChange == 1) {
      // user has just selected a level 1 entity,
      // automatically trigger bottom sheet for quick level 2 selection
      WidgetsBinding.instance
          .addPostFrameCallback((_) => _select2(context, data));
    }
  }

  @override
  Widget build(BuildContext _) => Consumer<AddressProvider>(
        builder: (context, data, _) => ListTile(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text('City / District'),
          subtitle: Text(data.level2?.name ??
              (data.level1 != null
                  ? 'Tap to select City / District.'
                  : 'Select Province / City first.')),
          onTap: data.level1 != null ? () => _select2(context, data) : null,
        ),
      );

  void _select2(BuildContext context, AddressProvider data) async {
    final level1 = data.level1;
    if (level1 == null) return;

    final selected = await _select<dvhcvn.Level2>(
      context,
      level1.children,
      header: level1.name,
    );
    if (selected != null) data.level2 = selected;
  }
}

class Level3 extends StatefulWidget {
  const Level3({super.key});

  @override
  _Level3State createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final data = AddressProvider.of(context);
    if (data.latestChange == 2) {
      // user has just selected a level 2 entity,
      // automatically trigger bottom sheet for quick level 3 selection
      WidgetsBinding.instance
          .addPostFrameCallback((_) => _select3(context, data));
    }
  }

  @override
  Widget build(BuildContext _) => Consumer<AddressProvider>(
        builder: (context, data, _) => ListTile(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text('Ward / Village'),
          subtitle: Text(data.level3?.name ??
              (data.level2 != null
                  ? 'Tap to select Ward / Village.'
                  : 'Select level Ward / Village.')),
          onTap: data.level2 != null ? () => _select3(context, data) : null,
        ),
      );

  void _select3(BuildContext context, AddressProvider data) async {
    final level2 = data.level2;
    if (level2 == null) return;

    final selected = await _select<dvhcvn.Level3>(
      context,
      level2.children,
      header: level2.name,
    );
    if (selected != null) data.level3 = selected;
  }
}

Future<T?> _select<T extends dvhcvn.Entity>(
  BuildContext context,
  List<T> list, {
  required String header,
}) =>
    showModalBottomSheet<T>(
      context: context,
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header (if provided)
          // if (header != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              header,
              // style: Theme.of(context).textTheme.headline6,
            ),
          ),
          // if (header != null)
          const Divider(),

          // entities
          Expanded(
            child: ListView.builder(
              itemBuilder: (itemContext, i) {
                final item = list[i];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('#${item.id}, ${item.typeAsString}'),
                  onTap: () => Navigator.of(itemContext).pop(item),
                );
              },
              itemCount: list.length,
            ),
          ),
        ],
      ),
    );
