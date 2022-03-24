import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool toggle1 = false, toggle2 = false, toggle3 = false;
  var cicularslider = SleekCircularSlider(
    min: 0,
    max: 100,
    appearance: CircularSliderAppearance(
      size: 100,
      customColors: CustomSliderColors(
        dotColor: const Color.fromRGBO(51, 58, 134, 1),
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
          const SizedBox(
            height: 20,
          ),
          Text(
            '${percentage.toInt()}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '🤩',
            style: TextStyle(fontSize: 20),
          ),
        ],
      );
    },
  );

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
        child: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            width: MediaQuery.of(context).size.width - 20,
            child: const Center(
              child: Text(
                'Detailed Report',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Anti-Müllerian Hormone',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'A great hormone, helps in regulating\nmenstrual cycles',
                          style: const TextStyle(fontSize: 10),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    cicularslider,
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              toggle1 = !toggle1;
                            });
                          },
                          icon: toggle1
                              ? Icon(Icons.keyboard_arrow_right)
                              : Icon(Icons.keyboard_arrow_down_outlined),
                          iconSize: 32,
                          color: const Color(0xff3C449E),
                          alignment: Alignment.bottomLeft,
                        ),
                      ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Insulin',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'A nice score though \!\nYou still need to pay attention to \nincrease your insulin levels.',
                          style: const TextStyle(fontSize: 10),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    cicularslider,
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              toggle2 = !toggle2;
                            });
                          },
                          icon: toggle2
                              ? Icon(Icons.keyboard_arrow_right)
                              : Icon(Icons.keyboard_arrow_down_outlined),
                          iconSize: 32,
                          color: const Color(0xff3C449E),
                          alignment: Alignment.bottomLeft,
                        ),
                      ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Thyroid Stimulating \nHormone (TSH)',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'You are working well with XYZ, just \nkeep up your good health',
                          style: const TextStyle(fontSize: 10),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    cicularslider,
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              toggle3 = !toggle3;
                            });
                          },
                          icon: toggle3
                              ? Icon(Icons.keyboard_arrow_right)
                              : Icon(Icons.keyboard_arrow_down_outlined),
                          iconSize: 32,
                          color: const Color(0xff3C449E),
                          alignment: Alignment.bottomLeft,
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Image.asset('assets/homebar.png'),
        ],
      ),
    );
  }
}
