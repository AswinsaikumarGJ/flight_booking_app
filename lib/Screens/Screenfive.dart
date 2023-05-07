import 'package:flight_booking_app/Screens/screenone.dart';
import 'package:flutter/material.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ScreenOne()));
          return Future.value(true);
        },
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 218, 213, 213),
          body: Container(
            height: h,
            width: w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    decoration: BoxDecoration(
                        color: Color(0xff2a4441),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Stack(
                      children: [
                        Positioned(
                            top: h * 0.04,
                            left: w * 0.07,
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ScreenOne()));
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ))),
                        Positioned(
                            top: h * 0.025,
                            left: w * 0.85,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/screenthree/personlogo.jpg"),
                            )),
                        Positioned(
                            top: h * 0.1,
                            left: w * 0.31,
                            child: Text(
                              "Boarding Pass",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.9,
                    width: w,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Stack(
                      children: [
                        Positioned(
                            top: h * 0.01,
                            left: w * 0.025,
                            child: Image.asset(
                                "assets/screenfive/airlinesimage.jpg")),
                        Positioned(
                            top: h * 0.24,
                            left: w * 0.09,
                            child: Text(
                              "American Airlines Flight MLI-18",
                              style: TextStyle(fontSize: 18),
                            )),
                        Positioned(
                            top: h * 0.33,
                            left: w * 0.07,
                            child: Text(
                              "BSW",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: h * 0.373,
                            left: w * 0.07,
                            child: Text(
                              "Barstow",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffafafaf)),
                            )),
                        Positioned(
                            top: h * 0.33,
                            left: w * 0.41,
                            child: Icon(
                              Icons.flight,
                              color: Colors.blue,
                            )),
                        Positioned(
                            top: h * 0.373,
                            left: w * 0.38,
                            child: Text(
                              "2h 55m",
                              style: TextStyle(color: Colors.black),
                            )),
                        Positioned(
                            top: h * 0.33,
                            left: w * 0.68,
                            child: Text("ARV",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold))),
                        Positioned(
                            top: h * 0.373,
                            left: w * 0.67,
                            child: Text(
                              "Ashland",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffafafaf)),
                            )),
                        Positioned(
                          top: h * 0.43,
                          left: w * 0.07,
                          child: Container(
                            height: h * 0.18,
                            width: w * 0.35,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                border: Border.all(color: Colors.teal),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.03,
                                    child: Icon(
                                      Icons.calendar_month,
                                      color: Colors.orange,
                                    )),
                                Positioned(
                                    top: h * 0.09,
                                    left: w * 0.03,
                                    child: Text(
                                      "Time",
                                      style:
                                          TextStyle(color: Color(0xffafafaf)),
                                    )),
                                Positioned(
                                    top: h * 0.12,
                                    left: w * 0.03,
                                    child: Text(
                                      "10.00 - 12.00",
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: h * 0.43,
                          left: w * 0.45,
                          child: Container(
                            height: h * 0.18,
                            width: w * 0.35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffafafaf)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.03,
                                    child: Icon(
                                      Icons.timer,
                                      color: Colors.teal,
                                    )),
                                Positioned(
                                    top: h * 0.09,
                                    left: w * 0.03,
                                    child: Text(
                                      "Date",
                                      style:
                                          TextStyle(color: Color(0xffafafaf)),
                                    )),
                                Positioned(
                                    top: h * 0.12,
                                    left: w * 0.03,
                                    child: Text(
                                      "June 30, 2022",
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: h * 0.63,
                          child: Container(
                            height: h * 0.13,
                            width: w,
                            child: Stack(
                              children: [
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.07,
                                    child: Text(
                                      "Gate",
                                      style: TextStyle(
                                          color: Color(0xffafafaf),
                                          fontSize: 16),
                                    )),
                                Positioned(
                                    top: h * 0.06,
                                    left: w * 0.07,
                                    child: Text(
                                      "C2",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Positioned(
                                    top: h * 0.022,
                                    left: w * 0.23,
                                    child: Text(
                                      "Seat",
                                      style: TextStyle(
                                          color: Color(0xffafafaf),
                                          fontSize: 16),
                                    )),
                                Positioned(
                                    top: h * 0.06,
                                    left: w * 0.23,
                                    child: Text(
                                      "A1",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Positioned(
                                    top: h * 0.023,
                                    left: w * 0.38,
                                    child: Text(
                                      "Flight No",
                                      style: TextStyle(
                                          color: Color(0xffafafaf),
                                          fontSize: 16),
                                    )),
                                Positioned(
                                    top: h * 0.06,
                                    left: w * 0.38,
                                    child: Text(
                                      "ZCVD",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Positioned(
                                    top: h * 0.023,
                                    left: w * 0.62,
                                    child: Text(
                                      "Class",
                                      style: TextStyle(
                                          color: Color(0xffafafaf),
                                          fontSize: 16),
                                    )),
                                Positioned(
                                    top: h * 0.06,
                                    left: w * 0.62,
                                    child: Text(
                                      "Business",
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: h * 0.76,
                          left: w * 0.12,
                          child: Container(
                              height: h * 0.09,
                              width: w * 0.6,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "Download Ticket",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
