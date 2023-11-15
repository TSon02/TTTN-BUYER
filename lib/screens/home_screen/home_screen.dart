import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/providers/search_provider.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/route_generator.dart';
import 'package:trendy_treasures/screens/home_screen/cubit/home_cubit.dart';
import 'package:trendy_treasures/screens/home_screen/widgets/banner_widget.dart';
import 'package:trendy_treasures/screens/home_screen/widgets/grid_products_widget.dart';
import 'package:trendy_treasures/screens/home_screen/widgets/popular_product_widget.dart';
import 'package:trendy_treasures/utils/list.dart';
import 'package:trendy_treasures/widgets/loader.dart';
import 'package:trendy_treasures/widgets/subtitle_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.persistentTabController});
  final PersistentTabController persistentTabController;
  static BlocProvider<HomeCubit> provider(PersistentTabController controller) {
    return BlocProvider(
      create: (context) {
        return HomeCubit();
      },
      child: HomeScreen(persistentTabController: controller),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AfterLayoutMixin {
  final TextEditingController _editingController = TextEditingController();
  int _categoryIndex = 0;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<HomeCubit>().getAllProducts(context);
  }

  void refresh() async {
    await context.read<HomeCubit>().getAllProducts(context);
  }

  void onSubmittedHandler(String input) {
    // Handle the input submission and the tab change here
    log(input);
    log(widget.persistentTabController.index.toString());
    widget.persistentTabController.jumpToTab(1);
    context.read<SearchProvider>().onSearchChanged(input);
    log(widget.persistentTabController.index.toString());
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    print(user.token);

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        switch (state.data!.status) {
          case StatusType.loading:
            return const Loader();

          case StatusType.loaded:
            // print(state.data!.productsByCategory.length);
            // print(state.data!.products[0].toRawJson());
            // print(state.data!.products[1].toRawJson());

            return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  // title: const Text('Home'),
                  actions: [
                    AnimSearchBar(
                        helpText: 'Search...',
                        width: MediaQuery.sizeOf(context).width,
                        textController: _editingController,
                        boxShadow: false,
                        // color: const Color(0xFFE7EAEF),
                        color: Colors.white,
                        onSuffixTap: () {
                          setState(() {
                            _editingController.clear();
                          });
                        },
                        onSubmitted: onSubmittedHandler)
                  ],
                  backgroundColor: Colors.white,
                  // backgroundColor: Colors.transparent,
                  bottomOpacity: 0,
                  elevation: 0,
                  leading: Builder(
                    builder: (context) {
                      return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 30,
                        ),
                      );
                    },
                  ),
                ),
                drawer: const Drawer(),
                backgroundColor: Colors.white,

                body: RefreshIndicator(
                  onRefresh: () async {
                    await context.read<HomeCubit>().getAllProducts(context);
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height - 155,
                          child: const BannerWidget(),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TitleTextWidget(
                                      title: 'New Arrivals', fontSize: 18),
                                  SubTitleWidget(
                                      subTitle: 'View All',
                                      fontWeight: FontWeight.w600),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              state.data!.products.isNotEmpty
                                  ? GridProductsWidget(
                                      products: state.data!.newProducts)
                                  : const SizedBox(),
                              const SizedBox(
                                height: 24,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TitleTextWidget(
                                      title: 'Discount Offer', fontSize: 18),
                                  SubTitleWidget(
                                      subTitle: 'View All',
                                      fontWeight: FontWeight.w600),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 160,
                            enableInfiniteScroll: false,
                            // enlargeCenterPage: true,
                            viewportFraction: 0.75,
                            padEnds: false,
                          ),
                          items: [1, 2, 3, 4, 5].map(
                            (i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: 270,
                                    margin: const EdgeInsets.only(left: 24),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 270,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'assets/images/banner/banner0.png',
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12, top: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const TitleTextWidget(
                                                title: '50% Off',
                                                fontSize: 25,
                                              ),
                                              const TitleTextWidget(
                                                title: 'On everything today',
                                                fontWeight: FontWeight.normal,
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              const SubTitleWidget(
                                                subTitle:
                                                    'With code:FSCREATION',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 11,
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .symmetric(
                                                        horizontal: 16,
                                                        vertical: 6),
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24)),
                                                child: const Text(
                                                  'Get Now',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ).toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TitleTextWidget(
                                      title: 'Popular', fontSize: 18),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const SubTitleWidget(
                                        subTitle: 'View All',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              state.data?.popularProducts[0] != null
                                  ? PopularProductWidget(
                                      product: state.data!.popularProducts[0])
                                  : const SizedBox(),

                              state.data?.popularProducts[1] != null
                                  ? PopularProductWidget(
                                      product: state.data!.popularProducts[1])
                                  : const SizedBox(),

                              const SizedBox(
                                height: 8,
                              ),

                              //categories

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TitleTextWidget(
                                      title: 'Categories', fontSize: 18),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          RouteGenerator.categoriesScreen);

                                      // PersistentNavBarNavigator.pushNewScreen(
                                      //   context,
                                      //   screen: LoginScreen.provider(),
                                      //   withNavBar:
                                      //       true, // OPTIONAL VALUE. True by default.
                                      //   pageTransitionAnimation:
                                      //       PageTransitionAnimation.cupertino,
                                      // );
                                    },
                                    child: const SubTitleWidget(
                                        subTitle: 'View All',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 35,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      borderRadius: BorderRadius.circular(16),
                                      onTap: () async {
                                        if (_categoryIndex == index) {
                                        } else {
                                          setState(() {
                                            _categoryIndex = index;
                                            context
                                                .read<HomeCubit>()
                                                .changeProduct(
                                                    category:
                                                        productCategories[index]
                                                            ["type"]);
                                          });
                                        }
                                      },
                                      child: Container(
                                        // width: 50,
                                        // height: 100,
                                        margin: const EdgeInsets.only(
                                            right: 6, left: 6),
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        decoration: BoxDecoration(
                                          color: _categoryIndex == index
                                              ? Colors.black
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.grey.withOpacity(0.5),
                                          ),
                                        ),
                                        child: Text(
                                          productCategories[index]["type"],
                                          style: TextStyle(
                                              color: _categoryIndex == index
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: productCategories.length,
                                ),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              state.data!.products.isNotEmpty
                                  ? GridProductsWidget(
                                      products: state.data!.productsByCategory,
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),

                // TextButton(
                //   child: Text(user.token!),
                //   onPressed: () {
                //     Navigator.of(context, rootNavigator: true)
                //         .pushNamed(RouteGenerator.loginScreen);
                //   },
                // ),
              ),
            );
          default:
            return const Center(
              child: Text('Something went wrong'),
            );
        }
      },
    );
  }
}
