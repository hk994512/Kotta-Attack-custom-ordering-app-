import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/widgets/my_button.dart';
import '../views/select_drink.dart';
import '../views/view_plants.dart';
import '../widgets/build_container.dart';
import '../widgets/build_source.dart';
import '/extension/extensions.dart';
import '/helpers/ui_helper.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  @override
  void initState() {
    timer = Timer(const Duration(seconds: 3), () {
      context.pushreplaceRoute(ONBOARDING());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;
    final h = query.height;
    final w = query.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: UIHelpers.appImage(
              height: h,
              width: w,
              'assets/Splash Screen.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isToggled = false;
  void changeToggle() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final mealItems = [
      {'image': 'assets/kota-removebg-preview 2.png', 'color': 0xffFFC700},
      {'image': 'assets/kota-removebg-preview 3.png', 'color': 0xff000000},
      {'image': 'assets/kota-removebg-preview 4.png', 'color': 0xffFFC700},
    ];

    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.primaryVelocity! > 0) {
          _scaffoldKey.currentState?.openDrawer();
        } else if (details.primaryVelocity! < 0) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.only(left: 10, right: 10),
                color: Color(0xffFFC107),
                child: UIHelpers.appImage('assets/logo.png'),
              ),
              8.0.ht,
              ListTile(
                leading: Icon(
                  Icons.energy_savings_leaf,
                  color: Color(0xff00BC1E),
                ),
                title: UIHelpers.appText(
                  'VIEW PLANTS',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {
                  context.popRoute();
                  Future.delayed(const Duration(seconds: 2), () {
                    if (context.mounted) {
                      context.pushRoute(const ViewPlants());
                    }
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.login, color: Color(0xffFFC107)),
                title: UIHelpers.appText(
                  'LOGOUT',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: Padding(
              padding: const EdgeInsets.only(left: 3, top: 12),
              child: Container(
                height: 65,
                width: 65,
                padding: EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  color: Color(0xffFFC107),
                  border: Border.all(color: Color(0xffFFC107)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    UIHelpers.appImage('assets/Rectangle 17.png'),
                    4.0.ht,
                    UIHelpers.appImage('assets/Rectangle 18.png'),
                    4.0.ht,
                    UIHelpers.appImage('assets/Rectangle 19.png'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            20.0.ht,
            UIHelpers.appText(
              'Create your kota',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            12.0.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(mealItems.length, (i) {
                final item = mealItems[i];
                final image = item['image'] as String;
                final color = item['color'] as int;
                return SingleChildScrollView(
                  child: buildContainer(image, color),
                );
              }),
            ),
            10.0.ht,
            Center(
              child: UIHelpers.appImage(
                'assets/kota-removebg-preview 2 (1).png',
              ),
            ),
            12.0.ht,
            Column(
              children: [
                Container(
                  height: 52,
                  width: 324,
                  color: Color(0xff000000),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: UIHelpers.appText(
                          'Select Source',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: 0xffFFFFFF,
                        ),
                      ),
                      UIHelpers.appImage('assets/coke.png'),
                      GestureDetector(
                        onTap: changeToggle,
                        child: Icon(
                          !isToggled
                              ? CupertinoIcons.chevron_up
                              : CupertinoIcons.chevron_down,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                isToggled
                    ? Container(
                      height: 130,
                      width: 324,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        children: [
                          BuildSource(title: 'Tomato Sauce', type: 'FREE'),
                          BuildSource(title: 'BBQ Sauce', type: '+R4.00'),
                          BuildSource(title: 'Chakalaka auce', type: '+R2.00'),
                        ],
                      ),
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        UIHelpers.appText(
                          'Do you want to a drink?',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        Card(
                          elevation: 4,
                          child: IconButton(
                            iconSize: 50,
                            style: IconButton.styleFrom(
                              fixedSize: Size(120, 40),
                            ),
                            onPressed: () {},
                            icon: UIHelpers.appText(
                              'Add',
                              fontSize: 15,
                              color: 0xff5F5F5F,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                20.0.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyButton(
                      selectHandler:
                          () => context.pushRoute(
                            SelectDrink(mealItems: mealItems),
                          ),
                      title: 'Check out',
                    ),
                    Card(
                      elevation: 6,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xffFFFFFF),
                        ),
                        height: 55,
                        width: 117,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add, size: 32, weight: 12),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.remove, size: 32, weight: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
