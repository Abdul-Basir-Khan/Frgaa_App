import 'package:flutter/material.dart';
import 'package:frgaa_app/screens/bottom_nav_bar/home_screens/Tabs/all_product_screen.dart';
import 'package:frgaa_app/screens/bottom_nav_bar/home_screens/Tabs/category_screen.dart';
import 'package:frgaa_app/screens/bottom_nav_bar/home_screens/Tabs/product_description.dart';
import 'package:frgaa_app/themes/app_textStyle.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../themes/app_colors.dart';

class AllTabs extends StatefulWidget {
  const AllTabs({super.key});

  @override
  State<AllTabs> createState() => _AllTabsState();
}

class _AllTabsState extends State<AllTabs> {
  final List adsImages = [
    'assets/images/home_screen/1.png',
    'assets/images/home_screen/Rectangle 4.png',
    'assets/images/home_screen/2.png',
  ];

  final List name = [
    'Milk',
    'Oil',
    'Snacks',
    'Meat',
    'Snacks',
    'Meat',
    'Milk',
    'Oil',
  ];

  final List popularImages = [
    'assets/images/home_screen/pp1.png',
    'assets/images/home_screen/pp2.png',
    'assets/images/home_screen/pp3.png',
    'assets/images/home_screen/pp1.png',
    'assets/images/home_screen/pp2.png',
    'assets/images/home_screen/pp1.png',
  ];
  final List images = [
    'assets/images/home_screen/p1.png',
    'assets/images/home_screen/p2.png',
    'assets/images/home_screen/p3.png',
    'assets/images/home_screen/p4.png',
    'assets/images/home_screen/p3.png',
    'assets/images/home_screen/p4.png',
    'assets/images/home_screen/p1.png',
    'assets/images/home_screen/p2.png',
  ];
  final List brandList = [
    'assets/images/home_screen/Ellipse 5.png',
    'assets/images/home_screen/Coca-Cola-Logo.wine 1.png',
    'assets/images/home_screen/Ellipse 5 (1).png',
    'assets/images/home_screen/Ellipse 5 (2).png',
  ];
  final List brandName = [
    'Foodies',
    'Coca Cola',
    'Dutchies',
    'Pepsi',
  ];
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 44,
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffA6A8B7),
                    fontSize: 16),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Color(0xffA6A8B7),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xffA6A8B7))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xffA6A8B7))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xffA6A8B7)))),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.15,
          child: PageView.builder(
            controller: controller,
            itemCount: adsImages.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width * 0.80,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(adsImages[index].toString()))),
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: SmoothPageIndicator(
              controller: controller, // PageController
              count: adsImages.length,
              effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: AppColors.blueColor,
                  dotColor: Color(0xffD9D9D9)), // your preferred effect
              onDotClicked: (index) {
                adsImages[index];
              }),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              'Product',
              style: AppTextStyles.mediumStyle
                  .copyWith(color: AppColors.mainColor),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                          CategoryScreen()));
              },

              child: Text(
                'See all',
                style: AppTextStyles.mediumStyle
                    .copyWith(color: AppColors.mainColor, fontSize: 10),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: name.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.68,
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                const ProductDescription()));
                    },
                    child: Image(image: AssetImage(images[index].toString()))),
                Text(
                  name[index].toString(),
                  style: AppTextStyles.semiBoldStyle
                      .copyWith(color: const Color(0xff828282)),
                ),
                Text(
                  'All type pure ${name[index]} is available here',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mediumStyle
                      .copyWith(color: const Color(0xffA6A8B7), fontSize: 7),
                ),
              ],
            );
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Popular Brands',
          style: AppTextStyles.mediumStyle.copyWith(color: AppColors.mainColor),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  brandName.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.transparent,
                              child: Image(
                                image: AssetImage(brandList[index].toString()),
                              ),
                            ),
                            Text(
                              brandName[index].toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(color: AppColors.primaryBlack),
                            )
                          ],
                        ),
                      )),
            )),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              'Popular Products',
              style: AppTextStyles.mediumStyle
                  .copyWith(color: AppColors.mainColor),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AllProductsScreen()));
              },
              child: Text(
                'See all',
                style: AppTextStyles.mediumStyle
                    .copyWith(color: AppColors.mainColor, fontSize: 10),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            shrinkWrap: true,
            itemCount: popularImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return

                Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                      height: 120,
                      width: 120,
                      image: AssetImage(popularImages[index].toString())),
                  Text(
                    name[index].toString(),
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: const Color(0xff828282)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'All type pure ${name[index]}\nis available here',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mediumStyle
                        .copyWith(color: const Color(0xffA6A8B7), fontSize: 7),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'SHA-RMZ-1000',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mediumStyle
                        .copyWith(color: AppColors.blueColor, fontSize: 6),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Additional\ninformation here',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mediumStyle
                        .copyWith(color: const Color(0xffA6A8B7), fontSize: 7),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'SDG 26',
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: const Color(0xff484848), fontSize: 9),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 70,
                    height: 20,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: AppColors.blueColor),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Add to cart',
                        style: AppTextStyles.semiBoldStyle
                            .copyWith(color: AppColors.blueColor, fontSize: 7),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
