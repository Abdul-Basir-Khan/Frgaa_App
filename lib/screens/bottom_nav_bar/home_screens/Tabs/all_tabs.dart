import 'package:flutter/material.dart';
import 'package:frgaa_app/themes/app_textStyle.dart';

import '../../../../themes/app_colors.dart';

class AllTabs extends StatefulWidget {
  const AllTabs({super.key});

  @override
  State<AllTabs> createState() => _AllTabsState();
}

class _AllTabsState extends State<AllTabs> {
  final List adsImages = [
    'assets/images/home_screen/brooke-lark-jUPOXXRNdcA-unsplash.jpg',
    'assets/images/home_screen/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg',
    'assets/images/home_screen/victoria-shes-UC0HZdUitWY-unsplash.jpg',
  ];

  final List name = [
    'Soap',
    'Honey',
    'Juice',
    'Cleaning Fluid',
    'Detergent',
    'Tea Powder',
  ];
  final List images = [
    'assets/images/home_screen/soaf.png',
    'assets/images/home_screen/Honey.png',
    'assets/images/home_screen/juice.png',
    'assets/images/home_screen/cleaning fluid.png',
    'assets/images/home_screen/serf.png',
    'assets/images/home_screen/tea powder.png',
  ];


  final List brandList = [
    'assets/images/home_screen/download.png',
    'assets/images/home_screen/download (1).png',
    'assets/images/home_screen/download (1) (1).png',
    'assets/images/home_screen/download (2).png',
    'assets/images/home_screen/download (3).png',
    'assets/images/home_screen/images.png',
  ];
  final List brandName = [
    'Wing',
    'LovePik',
    'Puma',
    'Channel',
    'Amazon',
    'Rainbow',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          'Company Products We Have',
          style: AppTextStyles.mediumStyle,
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                 brandName.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: AppColors.mainColor,
                              child: Image(
                                height: 40,
                                width: 40,
                                image: AssetImage(brandList[index].toString()),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
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
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(adsImages.length, (index) {
              return Container(
                height: MediaQuery.sizeOf(context).height * 0.20,
                width: MediaQuery.sizeOf(context).width * 0.85,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(adsImages[index].toString()))),
              );
            }),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Categories',
          style: AppTextStyles.mediumStyle,
        ),
        const SizedBox(
          height: 15,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: name.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.9,
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 90,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name[index].toString(),
                    style: AppTextStyles.regularStyle
                        .copyWith(color: AppColors.primaryBlack, fontSize: 10),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Image.asset(
                        height: 70,
                        fit: BoxFit.fitHeight,
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        images[index].toString()),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
