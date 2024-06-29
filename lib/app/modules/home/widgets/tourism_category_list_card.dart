import 'package:flutter/material.dart';
import 'package:untitled/app_text_style/app_text_style.dart';

class TourismCategoryListCard extends StatelessWidget {
  final String? categoryImage;
  final String? categoryName;
  final bool topBorder;
  final bool bottomBorder;
  final bool leftBorder;
  final bool rightBorder;

  const TourismCategoryListCard({
    super.key,
    this.categoryImage,
    this.categoryName,
    this.topBorder = false,
    this.bottomBorder = false,
    this.leftBorder = false,
    this.rightBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration:  BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: bottomBorder == true ?  const Color(0xFFC8C8C8) : Colors.transparent,
            width: bottomBorder == true ?  1.0 : 0,
          ),

          right: BorderSide(
            color: rightBorder == true ?  const Color(0xFFC8C8C8) : Colors.transparent,
            width: rightBorder == true ?  1.0 : 0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(categoryImage ?? ""),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            categoryName ?? "",
            style: AppTextStyle.interGreyF12W400,
          )
        ],
      ),
    );
  }
}
