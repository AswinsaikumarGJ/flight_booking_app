import 'package:flight_booking_app/Screens/screenone.dart';
import 'package:flight_booking_app/Screens/screensix.dart';
import 'package:flight_booking_app/Screens/screenthree.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  bool colorchange = false;
  int selectedindex = -1;
  int selectedindex1 = -1;
  int selectedindex2 = -1;
  int selectedindex3 = -1;
  List seatname1 = ["A1", "A2", "B1", "B2", "C1", "C2"];
  List seatname2 = ["A3", "A4", "B3", "B4", "C3", "C4"];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ScreenSix()));
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: h * 0.1,
                    width: w,
                    child: Stack(
                      children: [
                        Positioned(
                            top: h * 0.03,
                            left: w * 0.07,
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ScreenSix()));
                                },
                                child: Icon(Icons.arrow_back_ios))),
                        Positioned(
                            top: h * 0.02,
                            left: w * 0.3,
                            child: Text(
                              "Select Seat",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.3,
                    width: w,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned(
                            top: h * 0.015,
                            left: w * 0.06,
                            child: Text(
                              "Canada Airlines",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: h * 0.015,
                            left: w * 0.85,
                            child: Icon(Icons.more_vert)),
                        Positioned(
                            top: h * 0.08,
                            left: w * 0.07,
                            child: Text(
                              "SFO",
                              style:
                                  TextStyle(color: Colors.teal, fontSize: 18),
                            )),
                        Positioned(
                            top: h * 0.027,
                            left: w * 0.19,
                            child: Text(
                              ".",
                              style:
                                  TextStyle(color: Colors.teal, fontSize: 60),
                            )),
                        Positioned(
                            top: h * 0.068,
                            left: w * 0.22,
                            child: Text("..........................",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 22))),
                        Positioned(
                            top: h * 0.07,
                            left: w * 0.4,
                            child: Icon(
                              Icons.flight_land,
                              color: Colors.teal,
                            )),
                        Positioned(
                            top: h * 0.027,
                            left: w * 0.59,
                            child: Text(
                              ".",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 60),
                            )),
                        Positioned(
                            top: h * 0.08,
                            left: w * 0.65,
                            child: Text(
                              "NYC",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 18),
                            )),
                        Positioned(
                            top: h * 0.13,
                            left: w * 0.07,
                            child: Text(
                              "10.00 AM",
                              style: TextStyle(
                                  color: Color(0xffafafaf),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: h * 0.13,
                            left: w * 0.56,
                            child: Text(
                              "12.00 AM",
                              style: TextStyle(
                                  color: Color(0xffafafaf),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                          top: h * 0.2,
                          left: w * 0.07,
                          child: Container(
                            height: h * 0.07,
                            width: w * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text("Business",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        Positioned(
                            top: h * 0.215,
                            left: w * 0.75,
                            child: Text("\$250",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.1,
                    width: w,
                    // color: Colors.red,
                    child: Center(
                        child: Text("Business Class",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w,
                    // color: Colors.red,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: h * 0.5,
                            width: w * 0.5,
                            // color: Colors.blue,
                            margin: EdgeInsets.all(20),
                            child: GridView.builder(
                                itemCount: seatname1.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 20,
                                        crossAxisSpacing: 20,
                                        crossAxisCount: 2),
                                itemBuilder: ((context, index) {
                                  return InkWell(
                                    onTap: () {
                                      if (selectedindex == index) {
                                        setState(() {
                                          selectedindex = -1;
                                        });
                                      } else {
                                        setState(() {
                                          selectedindex = index;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: h * 0.03,
                                      width: w * 0.04,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: index == selectedindex
                                            ? Colors.orange
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text("${seatname1[index]}"),
                                    ),
                                  );
                                })),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: h * 0.5,
                            width: w * 0.5,
                            // color: Colors.green,
                            margin: EdgeInsets.all(20),
                            child: GridView.builder(
                                itemCount: seatname2.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 20,
                                        crossAxisSpacing: 20,
                                        crossAxisCount: 2),
                                itemBuilder: ((context, index1) {
                                  return InkWell(
                                    onTap: () {
                                      if (selectedindex1 == index1) {
                                        setState(() {
                                          selectedindex1 = -1;
                                        });
                                      } else {
                                        setState(() {
                                          selectedindex1 = index1;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: h * 0.03,
                                      width: w * 0.04,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: index1 == selectedindex1
                                            ? Colors.orange
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text("${seatname2[index1]}"),
                                    ),
                                  );
                                })),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.1,
                    width: w,
                    // color: Colors.red,
                    child: Center(
                        child: Text("Economy",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w,
                    // color: Colors.red,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: h * 0.5,
                            width: w * 0.5,
                            // color: Colors.blue,
                            margin: EdgeInsets.all(20),
                            child: GridView.builder(
                                itemCount: seatname1.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 20,
                                        crossAxisSpacing: 20,
                                        crossAxisCount: 2),
                                itemBuilder: ((context, index2) {
                                  return InkWell(
                                    onTap: () {
                                      if (selectedindex2 == index2) {
                                        setState(() {
                                          selectedindex2 = -1;
                                        });
                                      } else {
                                        setState(() {
                                          selectedindex2 = index2;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: h * 0.03,
                                      width: w * 0.04,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: index2 == selectedindex2
                                            ? Colors.orange
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text("${seatname1[index2]}"),
                                    ),
                                  );
                                })),
                          ),
                          Container(
                            height: h * 0.5,
                            width: w * 0.5,
                            // color: Colors.green,
                            margin: EdgeInsets.all(20),
                            child: GridView.builder(
                                itemCount: seatname2.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 20,
                                        crossAxisSpacing: 20,
                                        crossAxisCount: 2),
                                itemBuilder: ((context, index3) {
                                  return InkWell(
                                    onTap: () {
                                      if (selectedindex3 == index3) {
                                        setState(() {
                                          selectedindex3 = -1;
                                        });
                                      } else {
                                        setState(() {
                                          selectedindex3 = index3;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: h * 0.03,
                                      width: w * 0.04,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: index3 == selectedindex3
                                            ? Colors.orange
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text("${seatname2[index3]}"),
                                    ),
                                  );
                                })),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.2,
                    width: w,
                  )
                ],
              ),
            ),
          ),
          bottomSheet: Container(
            height: h * 0.2,
            width: w,
            color: Color(0xff2a4441),
            child: Stack(
              children: [
                Positioned(
                  top: h * 0.04,
                  left: w * 0.07,
                  child: Container(
                    height: h * 0.03,
                    width: w * 0.07,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: h * 0.045,
                  left: w * 0.17,
                  child: Text(
                    "Available",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: h * 0.04,
                  left: w * 0.38,
                  child: Container(
                    height: h * 0.03,
                    width: w * 0.07,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  top: h * 0.045,
                  left: w * 0.48,
                  child: Text(
                    "Booked",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: h * 0.04,
                  left: w * 0.66,
                  child: Container(
                    height: h * 0.03,
                    width: w * 0.07,
                    color: Colors.orange,
                  ),
                ),
                Positioned(
                  top: h * 0.045,
                  left: w * 0.75,
                  child: Text(
                    "Selected",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: h * 0.08,
                  left: w * 0.18,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => ScreenOne()));
                    },
                    child: Container(
                        height: h * 0.07,
                        width: w * 0.6,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Proceed",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
