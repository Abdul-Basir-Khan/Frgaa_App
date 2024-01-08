import 'package:flutter/material.dart';
import 'package:frgaa_app/screens/bottom_nav_bar/home_screens/Tabs/add_to_cart_screen.dart';
import 'package:frgaa_app/themes/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../themes/app_textStyle.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {

  final PageController controller=PageController();

  int value=0;

  @override


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children:  [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  const Icon(Icons.shopping_cart_outlined,size: 30,color: Color(0xffA6A8B7),),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Select',style: AppTextStyles.semiBoldStyle.copyWith(color: const Color(0xffA6A8B7)),),
                      const SizedBox(width: 5,),
                      const Icon(Icons.keyboard_arrow_down,color: Color(0xffA6A8B7),)
                    ],
                  ),
                  const Spacer(),
                 const Icon(Icons.arrow_forward,color: Color(0xffAFAFAF),),

                ],
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.24,
                child: PageView.builder(
                  controller: controller,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return const Image(
                        image:  AssetImage('assets/images/product_description/red.png'));
                  },
                ),
              ),

              Center(
                child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 2,
                    effect: const ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: AppColors.blueColor,
                        dotColor: Color(0xffD9D9D9)), // your preferred effect
                    onDotClicked: (index) {
                    }),
              ),

              const SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.start
                ,
                children: [
                  Text('Red Bull Energy Drink Cane Crate ',style: AppTextStyles.mediumStyle.copyWith(color:  const Color(0xFF484848),fontSize: 15)),
                  const Spacer(),
                  Container(
                    width: 37,
                    height: 37,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFF224FB6)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Center(
                      child: Icon(Icons.favorite_border,color: AppColors.blueColor,),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 10,),
              Text('SDG 43',style: AppTextStyles.semiBoldStyle.copyWith(color: const Color(0xff484848),fontSize: 16),),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('In Stock',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.blueColor,fontSize: 14),),
                  const Spacer(),
                  Text('Quantity',style: AppTextStyles.mediumStyle.copyWith(color:const Color(0xff484848),fontSize: 11),),
                  const SizedBox(width: 10,),
                  Container(
                    width: 91.30,
                    height: 25.60,
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.55, color: Color(0xFFA6A8B7)),
                        borderRadius: BorderRadius.circular(3.30),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap:(){
                              setState(() {
                                value>=1?value-=1:value=0;
                              });
                            },
                            child: const Icon(Icons.remove,color: Color(0xFFA6A8B7),)),
                        const VerticalDivider(
                          thickness: 1,width: 1,color: Color(0xFFA6A8B7),
                        ),
                        const Spacer(),
                        Text('${value}',style: AppTextStyles.mediumStyle.copyWith(color:const Color(0xff484848),fontSize: 11),),
                        const Spacer(),
                        const VerticalDivider(
                          thickness: 1,width: 1,color: Color(0xFFA6A8B7),
                        ),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                value+=1;
                              });

                            },
                            child: const Icon(Icons.add,color: Color(0xFFA6A8B7),)),
                      ],
                    ),
                  ),

                ],
              ),
            const SizedBox(height: 10,),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Red Bull is an energy drink that aims to provide a boost of energy and increase alertness. Its primary ingredients include caffeine, taurine, B-vitamins, and sugar.\n\n',
                      style: TextStyle(

                        color: Color(0xFF9B9B9B),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,

                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(

                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 3,backgroundColor: Color(0xff9B9B9B),
                        ),
                        const SizedBox(width: 10,),
                        Text('Caffeine Content: Red Bull contains a significant\namount of caffeine, a natural stimulant that\ncan help improve focus and combat fatigue.',

                            style: AppTextStyles.regularStyle.copyWith(
                          color: const Color(0xff9B9B9B),
                          fontFamily: 'Montserrat',
                          fontSize: 14
                        ),),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 3,backgroundColor: Color(0xff9B9B9B),
                        ),
                        const SizedBox(width: 10,),
                        Text('Taurine: Taurine is an amino acid often included in\nenergy drinks for its potential role in promoting\nenergy and mental alertness.',style: AppTextStyles.regularStyle.copyWith(
                            color: const Color(0xff9B9B9B),
                            fontFamily: 'Montserrat',
                            fontSize: 14
                        ),),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 3,backgroundColor: Color(0xff9B9B9B),
                        ),
                        const SizedBox(width: 10,),
                        Text('B-Vitamins: Red Bull typically contains B-vitamins\nlike B6 and B12, which are essential for energy\nmetabolism.',style: AppTextStyles.regularStyle.copyWith(
                            color: const Color(0xff9B9B9B),
                            fontFamily: 'Montserrat',
                            fontSize: 14
                        ),),
                      ],
                    ),



                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Text('Flavour',style: AppTextStyles.mediumStyle.copyWith(
                  color:AppColors.mainBold,
                  fontSize: 11
              ),),
              const SizedBox(height: 10,),
              SizedBox(
                height: 33,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                      fillColor: Colors.white,
                      filled: true,

                      hintText: 'Normal',

                      hintStyle:const  TextStyle(
                          fontWeight:FontWeight.w400 ,fontSize: 16,color: Color(0xffBABABA)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                            color: Color(0xffA6A8B7)
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                            color: Color(0xffA6A8B7)
                        ),
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                            color: Color(0xffA6A8B7)
                        ),
                      )
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Text('Size',style: AppTextStyles.mediumStyle.copyWith(
                  color:AppColors.mainBold,
                  fontSize: 11
              ),),
              const SizedBox(height: 10,),
              SizedBox(
                height: 33,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                      fillColor: Colors.white,
                      filled: true,

                      hintText: '48',

                      hintStyle:const  TextStyle(
                          fontWeight:FontWeight.w400 ,fontSize: 16,color: Color(0xffBABABA)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                            color: Color(0xffA6A8B7)
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                            color: Color(0xffA6A8B7)
                        ),
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                            color: Color(0xffA6A8B7)
                        ),
                      )
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddToCartScreen()));
                },
                child: Container(
                  width:double.infinity,
                  height: 43,
                  decoration: ShapeDecoration(
                    color: AppColors.blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child:     const Center(
                    child: Text(
                      'Add to cart',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.76,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),


            ],
            ),
          ),
        ),
      ),
    );
  }
}







