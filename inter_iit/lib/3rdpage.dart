import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class HormonalPage extends StatelessWidget {
  const HormonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        mini: true,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            width: MediaQuery.of(context).size.width - 20,
            child: Center(
              child: Text(
                'Your Hormonal Score',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SleekCircularSlider(
            min: 0,
            max: 100,
            appearance: CircularSliderAppearance(
              size: 200,
              customColors: CustomSliderColors(
                dotColor: Color.fromRGBO(51, 58, 134, 1),
                trackColor: Colors.grey,
              ),
              customWidths: CustomSliderWidths(
                trackWidth: 5,
                handlerSize: 10,
                progressBarWidth: 10,
                shadowWidth: 0,
              ),
            ),
            innerWidget: (percentage) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${percentage.toInt()}',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '🤩',
                    style: TextStyle(fontSize: 50),
                  ),
                ],
              );
            },
          ),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 20),
            width: MediaQuery.of(context).size.width - 20,
            child: Center(
              child: Text(
                'OPTIMUM',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 20,
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Center(
              child: Text(
                'Greatly going!\nGet insights about all you hormones and\n keep you health managed constantly',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
