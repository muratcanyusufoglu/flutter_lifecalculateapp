import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContainerWidget extends StatelessWidget {
  final Color renk;
  final Widget? child;
  ContainerWidget({super.key, this.renk = Colors.white30, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: renk, borderRadius: BorderRadius.circular(10)),
    );
  }
}
