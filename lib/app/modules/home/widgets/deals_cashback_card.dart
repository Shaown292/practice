import 'package:flutter/material.dart';
import 'package:untitled/app_text_style/app_text_style.dart';

class DealsCashbackCard extends StatelessWidget {
  final String? categoryImage;
  final String? categoryName;

  const DealsCashbackCard({
    super.key,
    this.categoryImage,
    this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(categoryImage ?? ""),
            )),
          ),
          const SizedBox(height: 5,),
          Text(categoryName ?? "" , style: AppTextStyle.interGreyF12W400,)
        ],
      ),
    );
  }
}
