import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class insideContainer extends StatelessWidget {
  final IconData iconName;
  final String text;
  final void Function()? onPress; //fonksiyon tanımlamaları.

  const insideContainer({
    super.key,
    this.iconName = FontAwesomeIcons.accessibleIcon,
    this.text = 'default',
    this.onPress = null,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 50,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.amber),
        )
      ],
    );
  }
}
