import 'package:flutter/material.dart';
import 'package:plantify_in/views/widgetviews/glob_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage('lib/assets/images/Group 46 (1).png'),
              ),
              text(
                  text: 'Plantify',
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Image(
                    image: AssetImage('lib/assets/images/Group 153.png'),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Image(
                    image: AssetImage('lib/assets/images/Frame 97.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              width: 500,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('lib/assets/images/Group 73.png',
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded),
                  hintText: 'Search',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage('lib/assets/images/Group 76.png'),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
