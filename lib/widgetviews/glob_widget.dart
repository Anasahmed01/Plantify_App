import 'package:flutter/material.dart';

text(
    {required text,
    required double fontSize,
    required fontWeight,
    required color}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
  );
}

textfield({required icon, required hintText, required controler}) {
  return TextField(
    controller: controler,
    decoration: InputDecoration(
      prefixIcon: icon,
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

drawer(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 1.9,
    child: Drawer(
      backgroundColor: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: drawerListTile(
                          const Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Image(
                              image:
                                  AssetImage('lib/assets/images/Group 52.png'),
                            ),
                          ),
                          'Shop',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: drawerListTile(
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Image(
                            image:
                                AssetImage('lib/assets/images/Group 142.png'),
                          ),
                        ),
                        'Plant Care',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: drawerListTile(
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Image(
                            image:
                                AssetImage('lib/assets/images/Group 143.png'),
                          ),
                        ),
                        'Community',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: drawerListTile(
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Image(
                            image:
                                AssetImage('lib/assets/images/Group 144.png'),
                          ),
                        ),
                        'My Account',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: drawerListTile(
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Image(
                            image:
                                AssetImage('lib/assets/images/Group 125.png'),
                          ),
                        ),
                        'Track Order',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      ListTile(
                        title: Center(
                          child: text(
                              text: 'Get the dirt.',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: secondary),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: 'Enter your Email',
                            hintStyle: TextStyle(color: secondary),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      ListTile(
                        title: Center(
                          child: text(
                              text: 'FAQ',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: secondary),
                        ),
                      ),
                      ListTile(
                        title: Center(
                          child: text(
                              text: 'ABOUT US',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: secondary),
                        ),
                      ),
                      ListTile(
                        title: Center(
                          child: text(
                              text: 'CONTACT US',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: secondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget drawerListTile(icon1, String title) {
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon1,
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            title,
            style: TextStyle(color: secondary, fontSize: 20),
          ),
        ),
      ],
    ),
  );
}

Widget lastRoundContainer(lastRoundImage) {
  return SizedBox(
    height: 60,
    width: 59,
    child: lastRoundImage,
  );
}

var primaryColor = const Color(0xff0D986A);
var secondary = const Color(0xffffffff);
