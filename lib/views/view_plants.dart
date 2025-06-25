import 'package:flutter/material.dart';
import '/extension/extensions.dart';

import '../helpers/ui_helper.dart';
import '../widgets/card_ruler.dart';
import '../widgets/my_button.dart';

class ViewPlants extends StatefulWidget {
  const ViewPlants({super.key});

  @override
  State<ViewPlants> createState() => _ViewPlantsState();
}

class _ViewPlantsState extends State<ViewPlants> {
  bool isToggled = false;
  void onToggled() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewPlants = [
      'assets/trees/9ca4a99c8471b846d2609f298cbdbef6-removebg-preview 1.png',
      'assets/trees/92-926289_beautiful-transparent-plants-image-plant-with-no-background-removebg-preview 2.png',
      'assets/trees/92-926289_beautiful-transparent-plants-image-plant-with-no-background-removebg-preview 3.png',
    ];
    final viewPlants2 = [
      'assets/trees/images__2_-removebg-preview 1.png',
      'assets/trees/images-removebg-preview 1.png',
      'assets/trees/lavender-flowers-w7w0N3A-600-removebg-preview 1.png',
    ];

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
                color: Color(0xff00BC1E),
                border: Border.all(color: Color(0xff00BC1E)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  UIHelpers.appImage(
                    'assets/Rectangle 17.png',
                    color: Color(0xffFFFFFF),
                  ),
                  4.0.ht,
                  UIHelpers.appImage(
                    'assets/Rectangle 18.png',
                    color: Color(0xffFFFFFF),
                  ),
                  4.0.ht,
                  UIHelpers.appImage(
                    'assets/Rectangle 19.png',
                    color: Color(0xffFFFFFF),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Center(
            child: UIHelpers.appText(
              'Hybrid Plants',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          10.0.ht,
          plantLookaHead(viewPlants),
          plantLookaHead(viewPlants2),
          cardRuler(
            isToggled,
            'Customize Pot',
            'assets/coke.png',
            onToggled,
            'African Pot Style',
            'Asian Pot Style',
            'American Pot Style',
            'FREE',
            '+R4.00',
            '+R2.00',
          ),
          12.0.ht,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(selectHandler: () {}, title: 'Proceed'),
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
    );
  }

  Row plantLookaHead(List<String> viewPlants) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(3, (i) {
        final plant = viewPlants[i];
        return UIHelpers.appImage(plant);
      }),
    );
  }
}
