import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/core/config/constants.dart';
import 'package:e_commerce_app/features/home/widgets/custom_category_item.dart';
import 'package:e_commerce_app/features/home/widgets/custom_section_item.dart';
import 'package:e_commerce_app/models/category_model.dart';
import 'package:e_commerce_app/models/carousel_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/home_appliance_section_model.dart';
import '../widgets/custom_carousel_slider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<CategoryModel> categories = [
    CategoryModel(imageUrl: 'asset/images/women.png', title: 'Women’s fashion'),
    CategoryModel(imageUrl: 'asset/images/man.png', title: 'men’s fashion'),
    CategoryModel(
        imageUrl: 'asset/images/laptops.png', title: 'Laptops & Electronics'),
    CategoryModel(imageUrl: 'asset/images/beauty.png', title: 'Beauty'),
    CategoryModel(imageUrl: 'asset/images/headphones.png', title: 'Headphones'),
  ];
  final List<HomeApplianceSection> sections = [
    HomeApplianceSection(
        imageUrl: 'asset/images/washingm2.jpg',
        itemName: 'Washing Machine',
        rate: 4.8),
    HomeApplianceSection(
        imageUrl: 'asset/images/thumbnail.jpg',
        itemName: 'New Cooker',
        rate: 4.6),
    HomeApplianceSection(
        imageUrl: 'asset/images/washingm2.jpg', itemName: 'Steam', rate: 2.5),
    HomeApplianceSection(
        imageUrl: 'asset/images/washingm2.jpg', itemName: 'Steam', rate: 2.5),
  ];
  final List<CarouselModel> carouselList = [
    CarouselModel(
      imageUrl: 'asset/images/slider.png',
      // offerText: 'UP TO 25% OFF' ),
    ),
    CarouselModel(
      imageUrl: 'asset/images/slider.png',
      // offerText: 'UP TO 25% OFF' ),
    ),
    CarouselModel(
      imageUrl: 'asset/images/slider.png',
      // offerText: 'UP TO 25% OFF' ),
    ),
  ];
  final controller = PageController(viewportFraction: .8, keepPage: true);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.mediaQuery.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        hintText: 'what do you search for?',
                        hintStyle:
                            Constants.theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                        prefixIcon: IconButton(
                          icon:
                              Image.asset('asset/images/🦆 icon _search_.png'),
                          onPressed: () {},
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(
                            color: Constants.theme.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'asset/images/🦆 icon _shopping cart_.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Stack(
                alignment: const Alignment(.01, .9),
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      height: 200,
                      viewportFraction: .97,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeOutQuad,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                      // disableCenter : true,
                    ),
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) {
                      return CustomCursorSlider(
                          carouselModel: carouselList[index]);
                    },
                  ),
                  AnimatedSmoothIndicator(
                    axisDirection: Axis.horizontal,
                    activeIndex: currentIndex,
                    count: carouselList.length,
                    effect: const SlideEffect(
                        spacing: 8.0,
                        radius: 25.0,
                        dotWidth: 10.0,
                        dotHeight: 10.0,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: Colors.white,
                        activeDotColor: Colors.indigo),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: Constants.theme.textTheme.bodyLarge,
                  ),
                  Text(
                    'view all',
                    style: Constants.theme.textTheme.bodyLarge?.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: Constants.mediaQuery.height * .2,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CustomCategoryItem(categoryModel: categories[index]);
                  },
                ),
              ),
              SizedBox(
                height: Constants.mediaQuery.height * .2,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CustomCategoryItem(categoryModel: categories[index]);
                  },
                ),
              ),
              Text(
                'Home Appliance',
                style: Constants.theme.textTheme.bodyLarge,
              ),
              SizedBox(
                height: Constants.mediaQuery.height * .3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sections.length,
                  itemBuilder: (context, index) =>
                      CustomSectionItem(sectionItem: sections[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
