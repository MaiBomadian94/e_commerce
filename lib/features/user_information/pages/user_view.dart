import 'package:flutter/cupertino.dart';

import '../../../core/config/constants.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'User Account',
        style: Constants.theme.textTheme.titleLarge,
      ),
    );
  }
}
