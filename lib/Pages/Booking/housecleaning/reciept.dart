import 'package:flutter/material.dart';
import 'package:property/Widgets/headwidget.dart';

class Reciept extends StatelessWidget {
  const Reciept({super.key});

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
                text: 'E-Reciept'),
          ],
        ),
      ),
    );
  }
}
