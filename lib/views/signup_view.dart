import 'package:flutter/material.dart';
import 'package:plantify_in/viewmodels/signup_viewmodel.dart';
import 'package:plantify_in/views/login_view.dart';
import 'package:plantify_in/views/widgetviews/glob_widget.dart';
import 'package:stacked/stacked.dart';

import 'home_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SignUpViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ),
                      );
                    },
                    iconSize: 50,
                    icon: const Image(
                      image: AssetImage('lib/assets/images/Group 36.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        const Image(
                          image:
                              AssetImage('lib/assets/images/Group 46 (1).png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: text(
                              text: 'PLANTIFY',
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  text(
                    text: 'Signup',
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff0D986A),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 40),
                    child: text(
                      text:
                          'Masukan No. Handphone Anda dan tunggu kode \nautentik dikirimkan',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff0D986A),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: text(
                        text: 'Email',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: textfield(
                        icon: const Icon(Icons.lock),
                        hintText: 'Enter Email',
                        controler: viewModel.email),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: text(
                        text: 'Password',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: textfield(
                        icon: const Icon(Icons.key),
                        hintText: 'Enter Password',
                        controler: viewModel.password),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 375,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF0D986A),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeView(),
                              ),
                            );
                          },
                          child: text(
                              text: 'SIGNUP',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
