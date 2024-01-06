import 'package:flutter/material.dart';
import 'package:frgaa_app/screens/bottom_nav_bar/home_screens/Tabs/all_tabs.dart';
import 'package:svg_flutter/svg.dart';

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
    'Snacks',
    'Meat',
    'Oil',
    'Fruits',
  ];

int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SvgPicture.asset('assets/images/home_screen/Group 3.svg'),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Select',style: AppTextStyles.semiBoldStyle.copyWith(color: Color(0xffA6A8B7)),),
                  SizedBox(width: 5,),
                  Icon(Icons.keyboard_arrow_down,color: Color(0xffA6A8B7),)
                ],
              ),
              Spacer(),
            Image(image: AssetImage("assets/images/home_screen/logo.png")),

            ],
          ),
          SizedBox(height: 15,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('FMCG',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.mainColor,)),
              SizedBox(width: 5,),
              Icon(Icons.keyboard_arrow_down,color: Color(0xffA6A8B7),)

            ],
          ),
          SizedBox(height: 3,),
          Divider(thickness: 3,height: 3,color: AppColors.blueColor,),
          SizedBox(height: 15,),

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
                       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: _currentIndex==index?AppColors.blueColor:Colors.transparent,

                       ),
                       child: Text(tabName[index],style: AppTextStyles.regularStyle.copyWith(color: _currentIndex==index?AppColors.primaryWhite:AppColors.mainColor),),
                     ),
                   );
                 }),
               ),
             ),
           ],),
         ),

          Expanded(child: SingleChildScrollView(
              child: _currentIndex==0?const AllTabs():Container()))

        ],
      ),
    );
  }
}
