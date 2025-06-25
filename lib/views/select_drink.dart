import 'package:flutter/material.dart';
import '/extension/extensions.dart';
import '../helpers/ui_helper.dart';
import '../splash/splash_screen.dart';
import '../widgets/build_container.dart';
import '../widgets/card_ruler.dart';
import '../widgets/my_button.dart';

class SelectDrink extends StatefulWidget {
  const SelectDrink({super.key, required this.mealItems});
  final List<Map<String, Object>> mealItems;
  @override
  State<SelectDrink> createState() => _SelectDrinkState();
}

class _SelectDrinkState extends State<SelectDrink> {
  bool isToggled = false;

  void toggledItems() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  final mealItems = [
    {'image': 'assets/kota-removebg-preview 2.png', 'color': 0xffFFC700},
    {'image': 'assets/kota-removebg-preview 3.png', 'color': 0xff000000},
    {'image': 'assets/kota-removebg-preview 4.png', 'color': 0xffFFC700},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 3, top: 12),
          child: GestureDetector(
            onTap: () {},
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                cardRuler(
                  isToggled,
                  'Select Source',
                  'assets/coke.png',
                  toggledItems,
                  'Tomato Sauce',
                  'BBQ Sauce',
                  'Chakalaka auce',
                  'FREE',
                  '+R4.00',
                  '+R2.00',
                ),
                10.0.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildContainer(
                      height: 70,
                      'assets/COKE-ZERO-PETITE-24X300ML-2-1-removebg-preview 1.png',
                      0xff000000,
                      borderRadius: 25,
                    ),
                    buildContainer(
                      colorFill: Color(0xff000000),
                      'assets/10631548EA-checkers515Wx515H 1.png',
                      0xffFFC700,
                      borderRadius: 25,
                      height: 70,
                    ),
                    buildContainer(
                      'assets/COKE-ZERO-PETITE-24X300ML-2-1-removebg-preview 2.png',
                      0xff000000,
                      borderRadius: 25,
                      height: 70,
                    ),
                  ],
                ),
                12.0.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 52,
                      width: 258,
                      color: Color(0xffEFEFEF),
                      child: Center(
                        child: UIHelpers.appText(
                          '330ml Sprite buddy',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    8.0.wt,
                    UIHelpers.appText(
                      'Cancel',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                12.0.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    UIHelpers.appText(
                      'Total',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    IconButton(
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        foregroundColor: Color(0xffffffff),
                        backgroundColor: Color(0xff000000),
                      ),

                      onPressed: () {},
                      icon: UIHelpers.appText(
                        'R62.00',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: 0xffffffff,
                      ),
                    ),
                  ],
                ),

                12.0.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyButton(
                      selectHandler: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Color(0xffFFC107),
                              actions: [
                                MyButton(
                                  selectHandler: () => context.popRoute(),
                                  title: 'Cancel',
                                ),
                                MyButton(
                                  selectHandler: () => context.popRoute(),
                                  title: 'OK',
                                ),
                              ],
                              title: Center(
                                child: UIHelpers.appText(
                                  'Confirmation',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              alignment: Alignment.center,
                              content: UIHelpers.appText(
                                'Your Order has been confirmed! We will be reached you shortly',
                              ),
                            );
                          },
                        );
                      },
                      title: 'Order',
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
                7.0.ht,
                MyButton(
                  bgColor: Color(0xffFFC107),
                  selectHandler: () {
                    context.showAlert('You are going to logOut');
                    Future.delayed(Duration(seconds: 3), () {
                      if (context.mounted) {
                        context.pushreplaceRoute(SplashScreen());
                      }
                    });
                  },
                  title: 'LogOut',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
