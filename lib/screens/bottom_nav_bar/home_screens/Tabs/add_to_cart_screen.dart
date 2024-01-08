import 'package:flutter/material.dart';
import 'package:frgaa_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../themes/app_textStyle.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  int value = 0;
  int value1 = 0;
  int value2 = 0;

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Cart',
          style: AppTextStyles.semiBoldStyle
              .copyWith(color: AppColors.mainBold, fontSize: 15),
        ),
        actions: const [
          Icon(
            Icons.arrow_forward,
            color: Color(0xffAFAFAF),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delivered by Fragaa ',
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: AppColors.blueColor, fontSize: 14),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                      'assets/images/product_description/Vector.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Delivery Fees: ',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'SDG 12',
                          style: TextStyle(
                            color: Color(0xFF6E6E6E),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(
                      width: 70,
                      height: 100,
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/product_description/m.png")),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Fresh Beef Meat with neat packing',
                          style: TextStyle(
                            color: Color(0xFF6E6E6E),
                            fontSize: 14.30,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        const Text(
                          'All type pure milk is available here',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 9.10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        const Text(
                          'SDG 43',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF484848),
                            fontSize: 11.70,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Seller: Fragaa',
                              style: TextStyle(
                                color: Color(0xFF8B8B8B),
                                fontSize: 9.10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 91.30,
                              height: 25.60,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 0.55, color: Color(0xFFA6A8B7)),
                                  borderRadius: BorderRadius.circular(3.30),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          value >= 1 ? value -= 1 : value = 0;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                        color: Color(0xFFA6A8B7),
                                      )),
                                  const VerticalDivider(
                                    thickness: 1,
                                    width: 1,
                                    color: Color(0xFFA6A8B7),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${value}',
                                    style: AppTextStyles.mediumStyle.copyWith(
                                        color: const Color(0xff484848),
                                        fontSize: 11),
                                  ),
                                  const Spacer(),
                                  const VerticalDivider(
                                    thickness: 1,
                                    width: 1,
                                    color: Color(0xFFA6A8B7),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          value += 1;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        color: Color(0xFFA6A8B7),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                height: 1,
                color: Color(0xFFC2C2C2),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(
                      image: AssetImage(
                          "assets/images/product_description/o.png")),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Fresh Beef Meat with neat packing',
                          style: TextStyle(
                            color: Color(0xFF6E6E6E),
                            fontSize: 14.30,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        const Text(
                          'All type pure milk is available here',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 9.10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        const Text(
                          'SDG 43',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF484848),
                            fontSize: 11.70,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Seller: Fragaa',
                              style: TextStyle(
                                color: Color(0xFF8B8B8B),
                                fontSize: 9.10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 91.30,
                              height: 25.60,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 0.55, color: Color(0xFFA6A8B7)),
                                  borderRadius: BorderRadius.circular(3.30),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          value1 >= 1
                                              ? value1 -= 1
                                              : value1 = 0;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                        color: Color(0xFFA6A8B7),
                                      )),
                                  const VerticalDivider(
                                    thickness: 1,
                                    width: 1,
                                    color: Color(0xFFA6A8B7),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${value1}',
                                    style: AppTextStyles.mediumStyle.copyWith(
                                        color: const Color(0xff484848),
                                        fontSize: 11),
                                  ),
                                  const Spacer(),
                                  const VerticalDivider(
                                    thickness: 1,
                                    width: 1,
                                    color: Color(0xFFA6A8B7),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          value1 += 1;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        color: Color(0xFFA6A8B7),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                height: 1,
                color: Color(0xFFC2C2C2),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delivered by Iceland ',
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: AppColors.blueColor, fontSize: 14),
                  ),
                  const Spacer(),
                  SvgPicture.asset(

                      'assets/images/product_description/Vector.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Delivery Fees: ',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'SDG 12',
                          style: TextStyle(
                            color: Color(0xFF6E6E6E),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(
                      width: 70,height: 100,fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/product_description/s.png")),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Fresh Beef Meat with neat packing',
                          style: TextStyle(
                            color: Color(0xFF6E6E6E),
                            fontSize: 14.30,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        const Text(
                          'All type pure milk is available here',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 9.10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        const Text(
                          'SDG 43',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF484848),
                            fontSize: 11.70,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Seller: Fragaa',
                              style: TextStyle(
                                color: Color(0xFF8B8B8B),
                                fontSize: 9.10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 91.30,
                              height: 25.60,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 0.55, color: Color(0xFFA6A8B7)),
                                  borderRadius: BorderRadius.circular(3.30),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          value2 >= 1
                                              ? value2 -= 1
                                              : value2 = 0;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                        color: Color(0xFFA6A8B7),
                                      )),
                                  const VerticalDivider(
                                    thickness: 1,
                                    width: 1,
                                    color: Color(0xFFA6A8B7),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${value2}',
                                    style: AppTextStyles.mediumStyle.copyWith(
                                        color: const Color(0xff484848),
                                        fontSize: 11),
                                  ),
                                  const Spacer(),
                                  const VerticalDivider(
                                    thickness: 1,
                                    width: 1,
                                    color: Color(0xFFA6A8B7),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          value2 += 1;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        color: Color(0xFFA6A8B7),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Recommended For You',
                style: TextStyle(
                  color: Color(0xFF484848),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 230,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  shrinkWrap: true,
                  itemCount: popularImages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                            image: AssetImage(popularImages[index].toString())),
                        Text(
                          name[index].toString(),
                          style: AppTextStyles.semiBoldStyle.copyWith(
                              color: const Color(0xff828282), fontSize: 10),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'All type pure ${name[index]}\nis available here',
                          style: AppTextStyles.mediumStyle.copyWith(
                              color: const Color(0xffA6A8B7), fontSize: 7),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'SHA-RMZ-1000',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mediumStyle.copyWith(
                              color: AppColors.blueColor, fontSize: 6),
                        ),
                        Text(
                          'Loc: Saray Store',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mediumStyle.copyWith(
                              color: const Color(0xffA6A8B7), fontSize: 7),
                        ),
                        Text(
                          'SDG 26',
                          style: AppTextStyles.semiBoldStyle.copyWith(
                              color: const Color(0xff484848), fontSize: 9),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 70,
                          height: 20,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: AppColors.blueColor),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Add to cart',
                              style: AppTextStyles.semiBoldStyle.copyWith(
                                  color: AppColors.blueColor, fontSize: 7),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        VerticalDivider(
                          thickness: 1,
                          color: AppColors.greyColor.shade100,
                          width: 1,
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Cost of purchase',
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'SDG 43',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF6E6E6E),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Fragaa delivery fees',
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'SDG 21',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF6E6E6E),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Iceland delivery fees',
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'SDG 10',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF6E6E6E),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Color(0xFF6F6F6F),
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'SDG 74',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF484848),
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  height: 43,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: ShapeDecoration(
                    color: AppColors.blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        'Check Out',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.76,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: AppColors.primaryWhite,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
