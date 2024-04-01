import 'package:e_commerce_app/core/config/constants.dart';
import 'package:e_commerce_app/models/category_model.dart';
import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({Key? key, required this.categoryModel})
      : super(key: key);
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(categoryModel.imageUrl,),
          ),
        ),
        SizedBox(
          width: 110,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 12),
            child: Text(
              categoryModel.title,
              textAlign: TextAlign.center,
              style: Constants.theme.textTheme.bodySmall,
              maxLines: 2,
            ),
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
