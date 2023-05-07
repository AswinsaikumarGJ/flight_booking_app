import 'package:flight_booking_app/Screens/screenseven.dart';
import 'package:flight_booking_app/Screens/screentwo.dart';
import 'package:flutter/material.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  int selectedindex = -1;
  List cabinname = [
    "Economy",
    "Business",
    "First class",
  ];
  var count = 0;
  var count1 = 0;
  var count2 = 0;
  // void addcounter(){
  //   setState(() {
  //       count++;
  //   });
  // }
  // void subcounter(){
  //   setState(() {
  //     count--;
  //     if(count < 0){
  //       count = 0;
  //     }
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ScreenSeven()));
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
                    height: h * 0.18,
                    width: w,
                    decoration: BoxDecoration(
                        color: Color(0xff2a4441),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Stack(
                      children: [
                        Positioned(
                            top: h * 0.03,
                            left: w * 0.06,
                            child: Text(
                              "Booking Your",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: h * 0.022,
                            left: w * 0.85,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/screenthree/personlogo.jpg"),
                            )),
                        Positioned(
                            top: h * 0.08,
                            left: w * 0.06,
                            child: Text(
                              "Flight",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: h * 0.2,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(children: [
                      Positioned(
                          top: h * 0.03,
                          left: w * 0.06,
                          child: Text("Vacation in Maldives",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))),
                      Positioned(
                          top: h * 0.09,
                          left: w * 0.07,
                          child: Text(
                            "CHLD",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.13,
                          left: w * 0.07,
                          child: Text(
                            "Jakarta",
                            style: TextStyle(
                                color: Color(0xffafafaf),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.08,
                          left: w * 0.39,
                          child: Icon(
                            Icons.flight,
                            color: Colors.blue,
                          )),
                      Positioned(
                          top: h * 0.13, left: w * 0.37, child: Text("2h 55m")),
                      Positioned(
                          top: h * 0.085,
                          left: w * 0.62,
                          child: Text(
                            "NYC",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: h * 0.126,
                          left: w * 0.62,
                          child: Text(
                            "New York",
                            style: TextStyle(
                                color: Color(0xffafafaf),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                    ]),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    child: Stack(
                      children: [
                        Positioned(
                            top: h * 0.04,
                            left: w * 0.06,
                            child: Text(
                              "Departure",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        Positioned(
                          top: h * 0.09,
                          left: w * 0.07,
                          child: Container(
                            height: h * 0.08,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.white,
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
                                    top: h * 0.028,
                                    left: w * 0.11,
                                    child: Text("21 May, 2022"))
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: h * 0.04,
                            left: w * 0.55,
                            child: Text(
                              "Adults",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        Positioned(
                          top: h * 0.09,
                          left: w * 0.55,
                          child: Container(
                            height: h * 0.08,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.03,
                                    child: InkWell(
                                        onTap: () {
                                          if (count < 0) {
                                            setState(() {
                                              count = 0;
                                            });
                                          }
                                          if (count > 0) {
                                            setState(() {
                                              count--;
                                            });
                                          }
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.orange,
                                        ))),
                                Positioned(
                                    top: h * 0.028,
                                    left: w * 0.18,
                                    child: Text("${count}")),
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.3,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            count++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.teal,
                                        ))),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: h * 0.25,
                            left: w * 0.55,
                            child: Text(
                              "Infants",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        Positioned(
                          top: h * 0.3,
                          left: w * 0.55,
                          child: Container(
                            height: h * 0.08,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.03,
                                    child: InkWell(
                                        onTap: () {
                                          if (count1 < 0) {
                                            setState(() {
                                              count1 = 0;
                                            });
                                          }
                                          if (count1 > 0) {
                                            setState(() {
                                              count1--;
                                            });
                                          }
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.orange,
                                        ))),
                                Positioned(
                                    top: h * 0.028,
                                    left: w * 0.18,
                                    child: Text("${count1}")),
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.3,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            count1++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.teal,
                                        ))),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: h * 0.25,
                            left: w * 0.06,
                            child: Text(
                              "Children",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        Positioned(
                          top: h * 0.3,
                          left: w * 0.07,
                          child: Container(
                            height: h * 0.08,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.03,
                                    child: InkWell(
                                        onTap: () {
                                          if (count2 < 0) {
                                            setState(() {
                                              count2 = 0;
                                            });
                                          }
                                          if (count2 > 0) {
                                            setState(() {
                                              count2--;
                                            });
                                          }
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.orange,
                                        ))),
                                Positioned(
                                    top: h * 0.028,
                                    left: w * 0.18,
                                    child: Text("${count2}")),
                                Positioned(
                                    top: h * 0.02,
                                    left: w * 0.3,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            count2++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.teal,
                                        ))),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.22,
                    width: w,
                    child: Stack(
                      children: [
                        Positioned(
                            top: h * 0.03,
                            left: w * 0.07,
                            child: Text("Cabin",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18))),
                        Positioned(
                          top: h * 0.07,
                          child: Container(
                            height: h * 0.13,
                            width: w,
                            child: ListView.builder(
                                itemCount: cabinname.length,
                                scrollDirection: Axis.horizontal,
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
                                      margin: EdgeInsets.all(10),
                                      width: 130,
                                      height: 80,
                                      decoration: BoxDecoration(
                                          color: index == selectedindex
                                              ? Colors.teal
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                          child: Text(
                                        "${cabinname[index]}",
                                        style: TextStyle(
                                            color: index == selectedindex
                                                ? Colors.white
                                                : Colors.black),
                                      )),
                                    ),
                                  );
                                })),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => ScreenTwo()));
                    },
                    child: Container(
                        height: h * 0.08,
                        width: w * 0.85,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Positioned(
                                top: h * 0.027,
                                left: w * 0.31,
                                child: Text(
                                  "Proceed",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
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
