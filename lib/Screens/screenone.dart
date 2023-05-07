import 'package:flight_booking_app/Screens/Screenfive.dart';
import 'package:flight_booking_app/Screens/screentwo.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  List images = [
    "assets/screenone/mastercardicon.png",
    "assets/screenone/payoneericon.png",
    "assets/screenone/paypalicon.jpg",
    "assets/screenone/visaicon.png",
  ];
  @override
  Widget build(BuildContext context) {
  var h = MediaQuery.of(context).size.height;
  var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WillPopScope(
        onWillPop: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
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
                  SizedBox(height: 20,),
                  Container(
                  height: h * 0.1,
                  width: w,
                  // color: Colors.red,
                  child: Stack(
                    children: [
                      Positioned(top: h * 0.03,left: w * 0.07,child: InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                        },
                        child: Icon(Icons.arrow_back_ios))),
                      Positioned(top: h * 0.02,left: w * 0.33,child: Text("Checkout",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
                    ],
                  )
                  ),
                  Container(
                    height: h * 0.15,
                    width: w,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: 
                    ((context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(images[index]),
                      );
                    })
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: h * 0.4,
                    width: w,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned(top: h * 0.008,left: w * 0.07,child: Container(width: w * 0.8,child: Image.asset("assets/screenone/flight.jpg"))),
                        Positioned(top: h * 0.23,left: w * 0.04,child: Text("Flight Yogyakarta",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                        Positioned(top: h * 0.23,left: w * 0.6,child: Text("HJB - JKM",style: TextStyle(fontSize: 20,color: Color(0xffafafaf),fontWeight: FontWeight.bold),)),
                        Positioned(top: h * 0.31,left: w * 0.04,child: Icon(Icons.timer,color: Colors.green,)),
                        Positioned(top: h * 0.317,left: w * 0.12,child: Text("10.00 AM - 12.00 PM",style: TextStyle(color: Color(0xffafafaf),fontWeight: FontWeight.bold),)),
                        Positioned(top: h * 0.31,left: w * 0.62,child: Text("Details >",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),))
                      ]
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: h * 0.25,
                    width: w,
                    // color: Colors.blue,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned(top: h * 0.04,child: Container(height: h * 0.18,width: w * 0.4,child: Image.asset("assets/screenone/spicejettext.png"))),
                        Positioned(top: h * 0.02,left: w * 0.34,child: Text("Departure",style: TextStyle(color: Color(0xffafafaf),fontSize: 18,fontWeight: FontWeight.bold),)),
                        Positioned(top: h * 0.07,left: w * 0.335,child: Text("12.30 Am",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 22),)),
                        Positioned(top: h * 0.02,left: w * 0.65,child: Text("Arrive",style: TextStyle(color: Color(0xffafafaf),fontSize: 18,fontWeight: FontWeight.bold),)),
                        Positioned(top: h * 0.07,left: w * 0.65,child: Text("01.00 Am",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)),
                        Positioned(top: h * 0.13,left: w * 0.34,child: Text("Estimate",style: TextStyle(color: Color(0xffafafaf),fontSize: 18,fontWeight: FontWeight.bold),)),
                        Positioned(top: h * 0.18,left: w * 0.34,child: Text("03.00 Am",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.green),)),
                        Positioned(top: h * 0.13,left: w * 0.65,child: Text("Price",style: TextStyle(color: Color(0xffafafaf),fontSize: 18,fontWeight: FontWeight.bold),)),
                        Positioned(top: h * 0.18,left: w * 0.65,child: Text("\$450",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.orange),)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenFive()));
                    },
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.85,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text("Proceed",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}