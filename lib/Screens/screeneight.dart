import 'package:flight_booking_app/Screens/screenfour.dart';
import 'package:flutter/material.dart';

class ScreenEight extends StatefulWidget {
  const ScreenEight({super.key});

  @override
  State<ScreenEight> createState() => _ScreenEightState();
}

class _ScreenEightState extends State<ScreenEight> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2a4441),
        body: Container(
          height: h,
          width: w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: h * 0.13,
                  width: w,
                  // color: Colors.red,
                  child: Stack(
                    children: [
                      Positioned(
                          top: h * 0.03,
                          left: w * 0.05,
                          child: Text(
                            "Find And Book",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.08,
                          left: w * 0.05,
                          child: Text(
                            "A Great Experience",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: h * 0.25,
                  width: w,
                  // color: Colors.red,
                  child: Stack(
                    children: [
                      Positioned(
                          top: h * 0.03,
                          left: w * 0.05,
                          child: Text(
                            "Going forward after a pandemic that",
                            style: TextStyle(
                                color: Color(0xffafafaf),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.08,
                          left: w * 0.05,
                          child: Text(
                            "devasted the airline industry",
                            style: TextStyle(
                                color: Color(0xffafafaf),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                        top: h * 0.13,
                        left: w * 0.03,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenFour()));
                          },
                          child: Container(
                              height: h * 0.08,
                              width: w * 0.4,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "Get Tickets",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: w,
                  child: Image.asset("assets/screeneight/map.jpg"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
