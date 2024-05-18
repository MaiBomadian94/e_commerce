import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_app/core/config/constants.dart';
import 'package:e_commerce_app/features/login/cubit/login_cubit.dart';
import 'package:e_commerce_app/features/login/cubit/login_states.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var email = TextEditingController();

  var password = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var loginCubit = LoginCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(
      bloc: loginCubit,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Constants.theme.primaryColor,
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      FadeInUp(
                        delay:const Duration(milliseconds:100),
                          child: Image.asset('asset/images/route_logo.png')),
                      const SizedBox(
                        height: 60,
                      ),
                      FadeInRight(
                        delay:const Duration(milliseconds:200),

                        child: Text(
                          'Welcome Back To Route',
                          style: Constants.theme.textTheme.titleLarge,
                        ),
                      ),
                      FadeInRight(
                        delay:const Duration(milliseconds:300),

                        child: Text('Please sign in with your mail',
                            style: Constants.theme.textTheme.bodySmall),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      FadeInRight(
                        delay:const Duration(milliseconds:400),

                        child: Text('E-mail',
                            style: Constants.theme.textTheme.bodyMedium),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeInRight(
                        delay:const Duration(milliseconds:500),
                        child: CustomTextFormField(
                          hintText: 'enter your email address',
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          onValidate: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeInRight(
                        delay:const Duration(milliseconds:600),

                        child: Text('Password',
                            style: Constants.theme.textTheme.bodyMedium),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeInRight(
                        delay:const Duration(milliseconds:700),
                        child: CustomTextFormField(
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
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInRight(
                        delay:const Duration(milliseconds:800),

                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Forgot password',
                            textAlign: TextAlign.end,
                            style: Constants.theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      FadeInRight(
                        delay: const Duration(milliseconds:900),

                        child: BorderRoundedButton(
                          title: 'Login',
                          color: Constants.theme.primaryColor,
                          fontSize: 20,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              loginCubit
                                  .login(email.text, password.text)
                                  .then((value) {
                                if (value) {
                                  if (kDebugMode) {
                                    print('well done');
                                  }
                                }
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeInRight(
                        delay:const Duration(milliseconds:1000),

                        child: Text('Don’t have an account? Create Account',
                            textAlign: TextAlign.center,
                            style: Constants.theme.textTheme.bodyMedium),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
