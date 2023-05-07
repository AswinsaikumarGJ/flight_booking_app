import 'package:flight_booking_app/Screens/screenfour.dart';
import 'package:flight_booking_app/Screens/screenseven.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  final List<Map<String, dynamic>> _items = [
    {
      'value': 'Highest Price',
      'label': 'Highest Price',
    },
    {
      'value': 'Lowest Price',
      'label': 'Lowest Price',
    },
  ];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ScreenFour()));
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
                    height: h * 0.25,
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
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ScreenFour()));
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ))),
                        Positioned(
                            top: h * 0.015,
                            left: w * 0.85,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/screenthree/personlogo.jpg"),
                            )),
                        Positioned(
                            top: h * 0.12,
                            left: w * 0.07,
                            child: Text(
                              "BSW",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: h * 0.17,
                            left: w * 0.07,
                            child: Text(
                              "Barstow",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffafafaf)),
                            )),
                        Positioned(
                            top: h * 0.12,
                            left: w * 0.47,
                            child: Icon(
                              Icons.flight,
                              color: Colors.blue,
                            )),
                        Positioned(
                            top: h * 0.17,
                            left: w * 0.45,
                            child: Text(
                              "2h 55m",
                              style: TextStyle(color: Colors.white),
                            )),
                        Positioned(
                            top: h * 0.12,
                            left: w * 0.78,
                            child: Text("ARV",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                        Positioned(
                            top: h * 0.17,
                            left: w * 0.77,
                            child: Text(
                              "Ashland",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffafafaf)),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.12,
                    width: w,
                    // color: Colors.red,
                    child: Stack(
                      children: [
                        Positioned(
                            top: h * 0.035,
                            left: w * 0.08,
                            child: Text(
                              "Recent Flights",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        Positioned(
                          top: h * 0.02,
                          left: w * 0.55,
                          child: Container(
                            width: w * 0.4,
                            // color: Colors.white,
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: SelectFormField(
                              initialValue: 'Highest Price',
                              //  type: SelectFormFieldType.dropdown, // or can be dialog
                              items: _items,
                              onChanged: (val) => print(val),
                              onSaved: (val) => print(val),
                              decoration: InputDecoration(
                                  hintText: "Select Price",
                                  // hintStyle: ,
                                  contentPadding:
                                      EdgeInsets.only(top: h * 0.02),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Color(0xff00333B),
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.8,
                    width: w * 0.9,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScreenSeven()));
                            },
                            child: Container(
                              height: h * 0.22,
                              width: w * 0.9,
                              margin: EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: h * 0.02,
                                      left: w * 0.02,
                                      child: Container(
                                          height: h * 0.18,
                                          width: w * 0.3,
                                          child: Image.asset(
                                              "assets/screenthree/britishairways.jpg"))),
                                  Positioned(
                                      top: h * 0.02,
                                      left: w * 0.38,
                                      child: Text(
                                        "Departure",
                                        style: TextStyle(
                                            color: Color(0xffafafaf),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      top: h * 0.058,
                                      left: w * 0.38,
                                      child: Text(
                                        "12.30 Am",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )),
                                  Positioned(
                                      top: h * 0.02,
                                      left: w * 0.64,
                                      child: Text(
                                        "Arrive",
                                        style: TextStyle(
                                            color: Color(0xffafafaf),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      top: h * 0.058,
                                      left: w * 0.64,
                                      child: Text(
                                        "01.00 Am",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )),
                                  Positioned(
                                      top: h * 0.11,
                                      left: w * 0.38,
                                      child: Text(
                                        "Estimate",
                                        style: TextStyle(
                                            color: Color(0xffafafaf),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      top: h * 0.15,
                                      left: w * 0.38,
                                      child: Text(
                                        "03.00 Am",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.green),
                                      )),
                                  Positioned(
                                      top: h * 0.111,
                                      left: w * 0.64,
                                      child: Text(
                                        "Price",
                                        style: TextStyle(
                                            color: Color(0xffafafaf),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      top: h * 0.15,
                                      left: w * 0.64,
                                      child: Text(
                                        "\$450",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.orange),
                                      ))
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
