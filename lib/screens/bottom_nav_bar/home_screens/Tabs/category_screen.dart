import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_textStyle.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  final List item=[
    'assets/images/product_description/veg.png',
    'assets/images/product_description/cream.png',
    'assets/images/product_description/drinks.png',
    'assets/images/product_description/fruits.png',
    'assets/images/product_description/meat.png',
    'assets/images/product_description/snacks.png',
  ];
  final List itemName=[
    'Vegetable',
    'Cream',
    'Drink',
    'Fruit',
    'Meat',
    'Snacks',
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

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
              const Spacer(),const Icon(Icons.arrow_forward,color: Color(0xffAFAFAF),),

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

          Text('All Categories',style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff828282),fontSize: 16),),

         Expanded(
           child: SingleChildScrollView(
             child:  ListView.builder(
               itemCount: itemName.length,shrinkWrap: true,physics: const ScrollPhysics(),scrollDirection: Axis.vertical,
               itemBuilder: (BuildContext context, int index) {
                 return  Column(
                   children: [
                     Container(
                       width: double.infinity,
                       height: 112,
                       decoration: BoxDecoration(
                           color: AppColors.primaryWhite,
                           border:Border.all(color: AppColors.blueColor.withOpacity(0.04)),
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 5),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text(itemName[index].toString(),style: AppTextStyles.mediumStyle.copyWith(color: AppColors.mainBold,fontSize: 16),),
                                 Text('All type pure Milk is available here',style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff828282),fontSize: 8),),

                               ],
                             ),
                           ),
                           const Spacer(),
                           ClipRRect(
                             borderRadius: const BorderRadius.only(topRight: Radius.circular(10) ,bottomRight: Radius.circular(10)),
                             child: SizedBox(
                               width: MediaQuery.sizeOf(context).width*0.50,
                               child: Image(
                                   height: 112,
                                   fit: BoxFit.cover,
                                   image: AssetImage(item[index].toString())),
                             ),
                           )


                         ],
                       ),
                     ),
                     const SizedBox(height: 10,),
                   ],
                 );
               },),
           ),
         )

        ],
        ),
      ),
    ));
  }
}
