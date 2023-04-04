import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plantify_in/views/widgetviews/glob_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const LoginView(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/Rectangle 118.png'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 140),
                child: Image(
                  image: AssetImage('assets/images/Group 46.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 280),
                child: Image(
                  image: AssetImage('assets/images/Plantify.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 40),
            child: SizedBox(
              child: text(
                text: 'GET READY \nBE HIGYENIC',
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: const Color(0xff0D986A),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10),
            child: SizedBox(
              child: text(
                text:
                    'Jelajahi AiLearn untuk menambah kemampuanmu \ndalam mengoperasikan Adobe Illustrator',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xff0D986A),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: SizedBox(
              height: 50,
              width: 360,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF0D986A),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    text: 'MASUK',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
