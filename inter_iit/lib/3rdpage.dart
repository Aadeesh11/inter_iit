import 'package:flutter/material.dart';
import 'package:inter_iit/4thpage.dart';
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
          SizedBox(
            height: 35,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => DetailsPage()));
            },
            child: Text(
              'DETAILED ANALYSIS',
              style: TextStyle(color: Color(0xFF3C449E)),
            ),
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                BorderSide(color: Color(0xFF3C449E)),
              ),
              padding: MaterialStateProperty.all(
                EdgeInsets.only(top: 5, bottom: 5),
              ),
              minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width - 100, 50)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => HormonalPage()));
            },
            child: Text(
              'EXPLORE ALL FEATURES',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.only(top: 5, bottom: 5),
              ),
              minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width - 100, 50)),
              backgroundColor: MaterialStateProperty.all(Color(0xFF3C449E)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
          Image.asset('assets/homebar.png'),
        ],
      ),
    );
  }
}
