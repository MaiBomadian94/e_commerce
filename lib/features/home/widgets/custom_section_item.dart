import 'package:e_commerce_app/models/home_appliance_section_model.dart';
import 'package:flutter/material.dart';

import '../../../core/config/constants.dart';

class CustomSectionItem extends StatelessWidget {
  const CustomSectionItem({Key? key, required this.sectionItem})
      : super(key: key);
  final HomeApplianceSection sectionItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8, bottom: 6, top: 10),
          child: Stack(
            alignment: const Alignment(.9, -.9),
            children: [
              Container(
                height: Constants.mediaQuery.width * .25,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      sectionItem.imageUrl,
                    ),
                  ),
                ),
              ),
              const CircleAvatar(
                  radius: 10,
                  child: Image(
                    image: AssetImage(
                      'asset/images/favorite_active.png',
                    ),
                  )),
            ],
          ),
        ),
        Text(
          sectionItem.itemName,
          style: Constants.theme.textTheme.bodySmall,
        ),
        Row(
          children: [
            Text(
              'Review (${sectionItem.rate})',
              style: Constants.theme.textTheme.bodySmall,
            ),
            const SizedBox(
              width: 6,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
