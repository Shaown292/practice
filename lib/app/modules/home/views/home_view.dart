import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled/app/modules/home/widgets/deals_cashback_card.dart';
import 'package:untitled/app/modules/home/widgets/tourism_category_list_card.dart';
import 'package:untitled/app_text_style/app_text_style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deals & Cashback",
                    style: AppTextStyle.interBlackF20W500,
                  ),
                  Text(
                    "view all",
                    style: AppTextStyle.interBlueF14W600,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            /// Deals and Cashback list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                height: 80,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Number of items in the list
                  itemBuilder: (context, index) {
                    // Return a widget for each item indexed by `index`
                    return const DealsCashbackCard(
                      categoryImage: "assets/images/electronics.png",
                      categoryName: "fashion",
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tourism Section",
                    style: AppTextStyle.interBlackF20W500,
                  ),
                  Text(
                    "view all",
                    style: AppTextStyle.interBlueF14W600,
                  ),
                ],
              ),
            ),

            /// Tourism Section list
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    padding: const EdgeInsets.only(right: 5),
                    width: Get.width * 0.6,
                    height: 200,
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      // Create a grid with 2 columns
                      crossAxisCount: 3,
                      // Generate 6 widgets
                      children: List.generate(6, (index) {
                        return TourismCategoryListCard(
                          categoryName: "Carry Tips",
                          categoryImage: "assets/images/carry_tips.png",
                          bottomBorder: index < 3 ? true : false,
                          rightBorder: index == 0 ||
                                  index == 1 ||
                                  index == 3 ||
                                  index == 4
                              ? true
                              : false,
                        );
                      }),
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/tour_offers.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 45,
                        child: Container(
                          height: 28,
                          width: 69,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFF00BFBA),
                          ),
                          child: Center(
                              child: Text(
                            "Lear More",
                            style: AppTextStyle.interWhiteF10W500,
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 219,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/exclusive_offer.png"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Jobs Available",
                style: AppTextStyle.interBlackF20W500,
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 180,
                    width: Get.width * 0.5-10,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/jobs_available.png"),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: Get.width * 0.5-10,
                    height: 200,
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      // Create a grid with 2 columns
                      crossAxisCount: 2,
                      // Generate 6 widgets
                      children: List.generate(4, (index) {
                        return TourismCategoryListCard(
                          categoryName: "Carry Tips",
                          categoryImage: "assets/images/carry_tips.png",
                          bottomBorder: index < 2 ? true : false,
                          rightBorder: index % 2 == 0
                              ? true
                              : false,
                        );
                      }),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
