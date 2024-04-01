import 'package:flutter/cupertino.dart';

import '../../../core/config/constants.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorite View',
        style: Constants.theme.textTheme.titleLarge,
      ),
    );
  }
}
