import 'package:flutter/material.dart';
import 'package:frgaa_app/screens/bottom_nav_bar/home_screens/Tabs/all_tabs.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_textStyle.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List tabName=[
    'All',
    'Fashion',
    'Food',
    'Gifts',
    'Vegetables',
  ];

int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.08,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.greyColor.withOpacity(0.40),
                AppColors.greyColor.withOpacity(0.40),
              ]),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Fargaa',
                style: AppTextStyles.regularStyle
                    .copyWith(color: AppColors.primaryBlack),
              ),
    const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryBlack.withOpacity(0.10),
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10),
                      prefixIcon: Icon(Icons.search, color: AppColors.primaryBlack.withOpacity(0.40)),
                     hintText: 'Search For Item',
                      hintStyle: const TextStyle(color: Color(0xf7000000)),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              const Icon(
                Icons.shopping_cart,
                color: AppColors.primaryBlack,
              ),

            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),

       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
           children: [
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: List.generate(tabName.length, (index) {
                 return GestureDetector(

                   onTap: (){
                     setState(() {
                       _currentIndex=index;
                     });
                   },
                   child: Container(
                     alignment: Alignment.center
                     ,
                     margin: const EdgeInsets.only(right: 10),
                     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: _currentIndex==index?AppColors.mainColor.withOpacity(0.30):Colors.grey.shade200,

                     ),
                     child: Text(tabName[index],style: AppTextStyles.regularStyle.copyWith(color: _currentIndex==index?Colors.black:Colors.white),),
                   ),
                 );
               }),
             ),
           ),
         ],),
       ),

        Expanded(child: SingleChildScrollView(child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: _currentIndex==0?const AllTabs():Container(),
        )))

      ],
    );
  }
}
