import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:note_it/core/constants/images.dart';
import 'package:note_it/main.dart';
import 'package:note_it/presentation/auth/bloc/login_bloc.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/constants/colors.dart';
import '../../../data/dataresource/auth_local_datasource.dart';
// import '../../home/pages/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 80.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130.0),
            child: SvgPicture.asset(
              AppImage.add,
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(height: 24.0),
          const Center(
            child: Text(
              "NoteIt",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 3.0),
          const SizedBox(height: 40.0),
          CustomTextField(
            controller: usernameController,
            hintText: 'Email',
            prefixIcon: const Icon(Icons.email),
          ),
          const SizedBox(height: 22.0),
          CustomTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
            prefixIcon: const Icon(Icons.lock),
          ),
          const SizedBox(height: 24.0),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                AuthLocalDatasource().saveAuthData(state.authResponseModel);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage())
                );
              }
              if (state is LoginFailure) {
                final errorMessage = jsonDecode(state.message) ['message'];
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Center(
                        child: Text(errorMessage)),
                      backgroundColor: Colors.red,)
                );
              }
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                if (state is LoginLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Button.filled(
                  onPressed: () {
                    context.read<LoginBloc>().add(
                      LoginButtonPressed(
                        email: usernameController.text,
                        password: passwordController.text,
                      ),
                    );
                  },
                  label: 'Login',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
