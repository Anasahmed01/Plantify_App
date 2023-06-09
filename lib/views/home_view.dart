import 'package:flutter/material.dart';
import 'package:plantify_in/viewmodels/home_viewmodel.dart';
import 'package:plantify_in/widgetviews/glob_widget.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return DefaultTabController(
          length: 5,
          child: Scaffold(
            drawer: drawer(context),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: secondary,
              title: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Image(
                        image: AssetImage('lib/assets/images/Group 46 (1).png'),
                      ),
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
                    ],
                  ),
                ),
              ],
              leading: Builder(
                builder: (context) => lastRoundContainer(
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: InkWell(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: const Image(
                        image: AssetImage('lib/assets/images/Frame 97.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
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
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 25),
                            child: Icon(Icons.search_rounded),
                          ),
                          hintText: 'Search',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Image(
                              image:
                                  AssetImage('lib/assets/images/Group 76.png'),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: TabBar(
                          unselectedLabelColor: Colors.black,
                          indicator: UnderlineTabIndicator(
                            insets:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            borderSide:
                                BorderSide(color: primaryColor, width: 2.0),
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: primaryColor,
                          isScrollable: true,
                          tabs: const [
                            Tab(
                              text: 'Top Pick',
                            ),
                            Tab(
                              text: 'Indoor',
                            ),
                            Tab(
                              text: 'Outdoor',
                            ),
                            Tab(
                              text: 'Seeds',
                            ),
                            Tab(
                              text: 'Planters',
                            ),
                          ]),
                    ),
                    contentContainer(
                      backgroundImgA: 'lib/assets/images/Rectangle 27.png',
                      backgroundImgB: 'lib/assets/images/Mask Group.png',
                      itemName: 'Peperomia',
                      productImg: 'lib/assets/images/Peperomia Obtusfolia.png',
                      productImgHeight: 200,
                      productImgwidth: 200,
                      productAmount: '\$400',
                      favorite: viewModel.gestureDetector(),
                      context: context,
                    ),
                    contentContainer(
                      backgroundImgA: 'lib/assets/images/Rectangle 28.png',
                      backgroundImgB: 'lib/assets/images/Mask Group.png',
                      itemName: 'Watermelon..',
                      productImg: 'lib/assets/images/sage.png',
                      productImgHeight: 200,
                      productImgwidth: 200,
                      productAmount: '\$350',
                      favorite: viewModel.gestureDetector(),
                      context: context,
                    ),
                    contentContainer(
                      backgroundImgA: 'lib/assets/images/Rectangle 27.png',
                      backgroundImgB: 'lib/assets/images/Mask Group.png',
                      itemName: 'Croton Petra',
                      productImg: 'lib/assets/images/interior medium light.png',
                      productImgHeight: 200,
                      productImgwidth: 200,
                      productAmount: '\$200',
                      favorite: viewModel.gestureDetector(),
                      context: context,
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Image(
                        image: AssetImage('lib/assets/images/Group 56.png'),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('lib/assets/images/Vector 1.png'),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('lib/assets/images/Group 57.png'),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage('lib/assets/images/Group 111.png'),
                        ),
                      ),
                    ),
                    label: '',
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
