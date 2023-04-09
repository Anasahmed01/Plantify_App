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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  drawerListTile(
                    const Icon(
                      Icons.turned_in_not,
                      color: Colors.white,
                    ),
                    'All Transactions',
                    const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 40,
                    ),
                  ),
                  drawerListTile(
                    const Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                    ),
                    'Pending Transaction',
                    const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 40,
                    ),
                  ),
                  drawerListTile(
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.grey,
                    ),
                    'Refund status',
                    const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 40,
                    ),
                  ),
                  drawerListTile(
                    const Icon(
                      Icons.nearby_error_outlined,
                      color: Colors.grey,
                    ),
                    'Raise an issue',
                    const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 40,
                    ),
                  ),
                  drawerListTile(
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                    'Help and support',
                    const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: SizedBox(
                child: Column(
                  children: [
                    drawerListTile(
                      Icon(
                        Icons.info_outline_rounded,
                        color: secondary,
                      ),
                      'About us',
                      const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 40,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Text('Enter Email'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget drawerListTile(icon1, String title, icon2) {
  return ListTile(
    title: Column(
      children: [
        Row(
          children: [
            icon1,
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                title,
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ],
        ),
      ],
    ),
    trailing: icon2,
    iconColor: Colors.grey,
  );
}

var primaryColor = const Color(0xff0D986A);
var secondary = const Color(0xffffffff);
