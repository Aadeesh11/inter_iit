import 'package:flutter/material.dart';
import 'package:inter_iit/3rdpage.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, bottom: 20),
            width: MediaQuery.of(context).size.width - 20,
            child: Center(
              child: Text(
                'Welcome to PCOS App',
                style: TextStyle(
                  fontSize: 30,
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
                'We are here to detect and monitor your PCOS Symptoms. Before that, One simple query\n “Have you consulted a doctor? “',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Container(
            child: Image.asset('assets/img1.png'),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'YES',
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
          SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => HormonalPage()));
            },
            child: Text(
              'GET PCOS TESTED',
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
        ],
      ),
    );
  }
}
