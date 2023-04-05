import 'package:flutter/material.dart';
import 'package:plantify_in/viewmodels/login_viewmodel.dart';
import 'package:plantify_in/views/signup_view.dart';
import 'package:plantify_in/widgetviews/glob_widget.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, bottom: 10),
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage(
                                'lib/assets/images/Group 46 (1).png'),
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
                      text: 'Login',
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff0D986A),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: text(
                        text:
                            'Enter NISN and password for\n start studying now',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff0D986A),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: text(
                          text: 'Username/Email',
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
                      padding: const EdgeInsets.only(bottom: 10),
                      child: textfield(
                          icon: const Icon(Icons.key),
                          hintText: 'Enter Password',
                          controler: viewModel.password),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpView(),
                                ),
                              );
                            },
                            child: const Text('SignUp')),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Center(
                        child: SizedBox(
                          height: 50,
                          width: 360,
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
                                  builder: (context) => const LoginView(),
                                ),
                              );
                            },
                            child: text(
                                text: 'LOGIN',
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
          ),
        );
      },
    );
  }
}
