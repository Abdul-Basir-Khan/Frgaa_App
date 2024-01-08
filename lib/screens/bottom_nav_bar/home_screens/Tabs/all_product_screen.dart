import 'package:flutter/material.dart';
import 'package:frgaa_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../themes/app_textStyle.dart';

class AllProductsScreen extends StatelessWidget {
 AllProductsScreen({super.key});

  final List name = [
    'Milk',
 'Snacks',
    'Meat',
    'Milk',
    'Snacks',
    'Milk',
    'Meat',
    'Snacks',
  ];

  final List popularImages = [
    'assets/images/home_screen/pp1.png',
    'assets/images/home_screen/pp2.png',
    'assets/images/home_screen/pp3.png',
    'assets/images/home_screen/pp1.png',
    'assets/images/home_screen/pp2.png',
    'assets/images/home_screen/pp1.png',
    'assets/images/home_screen/pp3.png',
    'assets/images/home_screen/pp2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return

      SafeArea(child: Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.start,children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SvgPicture.asset('assets/images/home_screen/Group 3.svg'),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Select',style: AppTextStyles.semiBoldStyle.copyWith(color: const Color(0xffA6A8B7)),),
                  const SizedBox(width: 5,),
                  const Icon(Icons.keyboard_arrow_down,color: Color(0xffA6A8B7),)
                ],
              ),
              const Spacer(),Icon(Icons.arrow_forward,color: Color(0xffAFAFAF),),

            ],
          ),
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.filter_alt_outlined,color: AppColors.mainColor,),

                    Text('Filters',style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff828282),fontSize: 11),),

                    Icon(Icons.keyboard_arrow_down,color:Color(0xffA6A8B7),)

                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Short By',style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff828282),fontSize: 11),),
                    SizedBox(width: 5,),
                    Icon(Icons.keyboard_arrow_down,color:Color(0xffA6A8B7),)

                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('By Category',style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff828282),fontSize: 11),),
                    SizedBox(width: 5,),
                    Icon(Icons.keyboard_arrow_down,color:Color(0xffA6A8B7),)

                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('By Brand',style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff828282),fontSize: 11),),
                    SizedBox(width: 5,),
                    Icon(Icons.keyboard_arrow_down,color:Color(0xffA6A8B7),)

                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Text('Products',style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff828282),fontSize: 16),),

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
               SizedBox(height: 10,),
                GridView.builder(
                  shrinkWrap: true,itemCount: name.length,
                  padding: EdgeInsets.zero,physics: NeverScrollableScrollPhysics(),
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,crossAxisSpacing: 10,
                      childAspectRatio: 0.63
                  ), itemBuilder: (BuildContext context, int index) { return  Column(
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
                ); }, )
              ],
              ),
            ),
          )

        ],
        ),
      ),
    ));
  }
}
