import 'dart:developer';
import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trendy_treasures/models/others/product_variant.dart';
import 'package:trendy_treasures/providers/coupons.dart';
import 'package:trendy_treasures/screens/addProduct_screen/cubit/add_product_cubit.dart';
import 'package:trendy_treasures/screens/addProduct_screen/widgets/custom_textfield_widget.dart';
import 'package:trendy_treasures/screens/addProduct_screen/widgets/product_variant_widget.dart';
import 'package:trendy_treasures/screens/addProduct_screen/widgets/select_coupons.dart';
import 'package:trendy_treasures/utils/list.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';
import 'package:trendy_treasures/utils/utils.dart';
import 'package:trendy_treasures/widgets/custom_button_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  static BlocProvider<AddProductCubit> provider() {
    return BlocProvider(
      create: (context) {
        return AddProductCubit();
      },
      child: const AddProductScreen(),
    );
  }

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _productBrandController = TextEditingController();
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final PageController _pageController = PageController();

  List<String> _categories = [];

  List<String> _sizes = [];

  String? category;

  String? size;

  List<File> _images = [];

  bool isCategorySelected = false;

  Color pickerColor = const Color(0xff443a49);

  List<ProductVariantRequest> productVariants = [];
  @override
  void dispose() {
    super.dispose();

    _productBrandController.dispose();
    _productNameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
  }

  void selectImages() async {
    final res = await pickImages();
    setState(() {
      _images = res;
    });
  }

  @override
  void initState() {
    for (var element in productCategories) {
      _categories.add(element['type']);
    }
    // _categories = productCategories;
    super.initState();
  }

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserProvider>(context).user;
    final couponsProvider = Provider.of<CouponsProvider>(context).coupons;

    // log(user.toJson().toString());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Add Product',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocListener<AddProductCubit, AddProductState>(
        listener: (context, state) async {
          if (state.data!.error != "") {
            if (state.data!.error.contains('Images') ||
                state.data!.error.contains('brand') ||
                state.data!.error.contains('Product') ||
                state.data!.error.contains('Description') ||
                state.data!.error.contains('Price') ||
                state.data!.error.contains('more') ||
                state.data!.error.contains('variants') ||
                state.data!.error.contains('is')) {
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
                btnOkOnPress: () {},
              ).show().then((value) {
                _productBrandController.clear();
                _productNameController.clear();
                _descriptionController.clear();
                _priceController.clear();
                _quantityController.clear();
                _images = [];
                setState(() {});
              });
            } else {
              await AwesomeDialog(
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocBuilder<AddProductCubit, AddProductState>(
              builder: (context, state) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    _images.isNotEmpty
                        ? Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: double.infinity,
                            height: 300,
                            child: Stack(
                              children: [
                                PageView.builder(
                                  controller: _pageController,
                                  itemBuilder: (context, index) {
                                    return Image.file(
                                      _images[index],
                                      fit: BoxFit.cover,
                                    );
                                  },
                                  itemCount: _images.length,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: SmoothPageIndicator(
                                      controller: _pageController,
                                      count: _images.length,
                                      effect: const SlideEffect(
                                        activeDotColor: Colors.white,
                                        dotWidth: 12,
                                        dotHeight: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : GestureDetector(
                            onTap: selectImages,
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(10),
                              dashPattern: const [10, 4],
                              strokeCap: StrokeCap.round,
                              child: Container(
                                width: double.infinity,
                                height: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.folder_open,
                                      size: 40,
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      'Select Product Images',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.shade400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFieldWidget(
                      label: 'Product Brand',
                      textEditingController: _productBrandController,
                      hintText: 'ex: Gucci,',
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    CustomTextFieldWidget(
                      label: 'Product Name',
                      textEditingController: _productNameController,
                      hintText: 'ex: T-Shirt',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      label: 'Description',
                      textEditingController: _descriptionController,
                      hintText: 'ex: T-Shirt',
                      maxLines: 7,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      textInputType: TextInputType.number,
                      label: 'Price',
                      textEditingController: _priceController,
                      hintText: 'ex: T-Shirt',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // CustomTextFieldWidget(
                    //   label: 'Quantity',
                    //   textInputType: TextInputType.number,
                    //   textEditingController: _quantityController,
                    //   hintText: 'ex: T-Shirt',
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      padding: const EdgeInsets.only(left: 12),
                      height: 60,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(0.2),
                      alignment: Alignment.center,
                      child: DropdownButton(
                        underline: Container(),
                        hint: const Text('Select Category'),
                        isDense: true,
                        isExpanded: true,
                        padding: const EdgeInsets.all(12),
                        onChanged: (value) {
                          setState(
                            () {
                              category = value;
                              size = null;
                              if (category == "Clothes") {
                                _sizes = clotheSizes;
                              } else if (category == 'Shoes') {
                                _sizes = shoesSizes;
                              } else {
                                _sizes = others;
                              }

                              isCategorySelected = true;
                            },
                          );
                        },
                        value: category,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: _categories
                            .map(
                              (item) => DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            height: 60,
                            width: double.infinity,
                            color: Colors.grey.withOpacity(0.2),
                            alignment: Alignment.center,
                            child: DropdownButton(
                              padding: const EdgeInsets.all(12),
                              hint: const Text('Size'),
                              onChanged: (value) {
                                setState(() {
                                  size = value;
                                });
                              },
                              value: size,
                              isDense: true,
                              isExpanded: true,
                              underline: Container(),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: _sizes
                                  .map(
                                    (item) => DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: CustomTextFieldWidget(
                            label: 'Quantity',
                            textInputType: TextInputType.number,
                            textEditingController: _quantityController,
                            hintText: 'ex: 1, 10, 100',
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Pick a color!'),
                                  content: SingleChildScrollView(
                                    child: ColorPicker(
                                      pickerColor: pickerColor,
                                      onColorChanged: changeColor,
                                      pickerAreaBorderRadius:
                                          BorderRadius.circular(50),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      child: const Text('Got it'),
                                      onPressed: () {
                                        // setState(
                                        //     () => currentColor = pickerColor);
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: pickerColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        TextButton.icon(
                          onPressed: () {
                            log(pickerColor.blue.toString());
                            if (size != null &&
                                _quantityController.text.isNotEmpty &&
                                int.tryParse(_quantityController.text)! > 0) {
                              setState(
                                () {
                                  productVariants.add(
                                    ProductVariantRequest(
                                        size: size!,
                                        quantity: int.tryParse(
                                            _quantityController.text)!,
                                        hexColor:
                                            '#${pickerColor.value.toRadixString(16)}'),
                                  );
                                  // log(productVariants[0].hexColor);
                                },
                              );
                            } else {
                              UIHelpers.showSnackBar(
                                  context: context,
                                  message: 'Please fill all types');
                            }
                          },
                          icon: const Icon(Icons.done),
                          label: const Text('Add'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    if (productVariants.isNotEmpty)
                      Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TitleTextWidget(
                                title: 'Size',
                                fontWeight: FontWeight.w600,
                              ),
                              TitleTextWidget(
                                title: 'Quantity',
                                fontWeight: FontWeight.w600,
                              ),
                              TitleTextWidget(
                                title: 'Color',
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                width: 0,
                              ),
                            ],
                          ),
                          for (int i = 0; i < productVariants.length; i++)
                            ProductVariantWidget(
                              productVariant: productVariants[i],
                              onDelete: () {
                                setState(() {
                                  productVariants.removeAt(i);
                                });
                              },
                            ),
                        ],
                      ),

                    SelectCoupons(category: category),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomButtonWidget(
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      title: 'Sell',
                      onClick: () async {
                        if (category == null) {
                          UIHelpers.showSnackBar(
                              context: context, message: "Category is empty");
                        } else {
                          await context.read<AddProductCubit>().uploadProduct(
                                context: context,
                                productBrand: _productBrandController.text,
                                productName: _productNameController.text,
                                description: _descriptionController.text,
                                price: _priceController.text,
                                category: category!,
                                images: _images,
                                productVariants: productVariants,
                                coupons: couponsProvider,
                              );
                        }
                      },
                      borderColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}
