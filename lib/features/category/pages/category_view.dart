import 'package:e_commerce_app/core/config/constants.dart';
import 'package:flutter/cupertino.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Category View',
        style: Constants.theme.textTheme.titleLarge,
      ),
    );
  }
}
