import 'package:e_commerce_app/core/config/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  var email = TextEditingController();

  var password = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.theme.primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset('asset/images/route_logo.png'),
                  const SizedBox(
                    height: 60,
                  ),
                  Text('Full Name',
                      style: Constants.theme.textTheme.bodyMedium),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    hintText: 'enter your ull Name',
                    controller: email,
                    keyboardType: TextInputType.text,
                    onValidate: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Mobile Number',
                    style: Constants.theme.textTheme.bodyMedium
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    hintText: 'enter your mobile no.',
                    keyboardType: TextInputType.number,
                    onValidate: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'E-mail address',
                    style: Constants.theme.textTheme.bodyMedium
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  CustomTextFormField(
                    hintText: 'enter your email address',
                    keyboardType: TextInputType.emailAddress,
                    onValidate: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    controller: email,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Text(
                    'Password',
                    style: Constants.theme.textTheme.bodyMedium
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  CustomTextFormField(
                    hintText: 'enter your password',
                    isPassword: true,
                    maxLines: 1,
                    controller: password,
                    onValidate: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  BorderRoundedButton(
                    title: 'Sign up',
                    color: Constants.theme.primaryColor,
                    fontSize: 20,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (kDebugMode) {
                          print('well done');
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
