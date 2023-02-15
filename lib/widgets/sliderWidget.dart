import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  double sliderValue;
  String text;
  bool divisions;
  double max;

  SliderWidget(
      {super.key,
      this.text = 'null',
      this.sliderValue = 0.0,
      this.divisions = false,
      this.max = 30.0});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  //s_SliderWidgetState({this.text = 'null', this.sliderValue = 0.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          widget.sliderValue.round().toString(),
          style: TextStyle(fontSize: 20),
        ),
        Slider(
            value: widget.sliderValue,
            min: 0.0,
            max: widget.max,
            divisions: widget.divisions ? 7 : null,
            onChanged: (changevalue) {
              setState(() {
                widget.sliderValue = changevalue;
              });
            }),
      ],
    );
  }
}
