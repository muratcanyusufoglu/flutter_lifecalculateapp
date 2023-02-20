import 'package:flutter/material.dart';
import 'package:flutter_lifealculator/homePage.dart';
import 'package:flutter_lifealculator/widgets/insideContainer.dart';
import 'package:flutter_lifealculator/widgets/sliderWidget.dart';
import 'package:flutter_lifealculator/widgets/widgetContainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  String? whichChoose;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ContainerWidget(child: insideContainer())),
                  Expanded(
                    child: ContainerWidget(
                      child: insideContainer(
                        iconName: FontAwesomeIcons.baby,
                        text: 'AirBN5',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ContainerWidget(
                    child: SliderWidget(
              text: 'Günde kaç sigara içiyorsunuz?',
              max: 30,
            ))),
            Expanded(
              child: ContainerWidget(
                child: SliderWidget(
                  text: 'Haftada kaç gün spor yapıyorsunuz?',
                  divisions: true,
                  max: 7,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          whichChoose = 'airbnb2';
                        });
                      },
                      child: ContainerWidget(
                        renk: whichChoose == 'airbnb2'
                            ? Colors.green
                            : Colors.white30,
                        child: insideContainer(
                          iconName: FontAwesomeIcons.w,
                          text: 'Kadın',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          whichChoose = 'airbnb3';
                        });
                        Navigator.pushNamed(context, SecondPage.secondPage);
                      },
                      child: ContainerWidget(
                        renk: whichChoose == 'airbnb3'
                            ? Colors.green
                            : Colors.white30,
                        child: insideContainer(
                          iconName: FontAwesomeIcons.algolia,
                          text: 'Erkek yiaağğ',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
