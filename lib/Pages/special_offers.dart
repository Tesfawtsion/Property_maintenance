import 'package:flutter/material.dart';
import 'package:property/Widgets/headwidget.dart';

import 'homepage.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          HeadWideget(
              onpressed: () {
                Navigator.pop(context);
              },
              text: 'Special Offers'),
          const Advertisement(
            boldtext: '30% Off',
            img: AssetImage('lib/images/Advert.jpg'),
            mdtext: 'Today Special',
            smtext: 'Get discount',
            smtext1: 'for every order today',
          ),
        ],
      ),
    ));
  }
}
