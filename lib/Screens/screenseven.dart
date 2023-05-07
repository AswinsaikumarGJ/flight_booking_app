import 'package:flight_booking_app/Screens/screensix.dart';
import 'package:flight_booking_app/Screens/screenthree.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({super.key});

  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}

class _ScreenSevenState extends State<ScreenSeven> {
  int selectedindex = -1;
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
  List categoryname = [
    "One way",
    "Round Trip",
    "Multi-City"
  ];
  @override
  Widget build(BuildContext context) {
  var h = MediaQuery.of(context).size.height;
  var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WillPopScope(
        onWillPop: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenThree()));
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
                                color: Color(0xff2a4441),borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                        )
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: h * 0.03,
                                    left: w * 0.06,
                                    child: Text("Let's Book Your",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
                                    Positioned(top: h * 0.022,left: w * 0.85,child: CircleAvatar(backgroundImage: AssetImage("assets/screenthree/personlogo.jpg"),)),
                                     Positioned(
                                    top: h * 0.08,
                                    left: w * 0.06,
                                    child: Text("Flight",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
                                    
                                ],
                              ),
                          ),
                          SizedBox(height: 20,),
                    Container(
                      height: h * 0.45,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: h * 0.01,
                            child: Container(
                              height: h * 0.13,
                              width: w,
                              child: ListView.builder(
                                itemCount: categoryname.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: 
                                (context,index){
                                  return InkWell(
                                    onTap: (){
                                                if(selectedindex == index){
                                      setState(() {
                                        selectedindex = -1;
                                      });
                                    }
                                    else{
                                      setState(() {
                                        selectedindex = index;
                                      });
                                    }
                                    },
                                    child: Container(
                                      // height: 0,
                                      width: 90,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:index == selectedindex ? Colors.teal : Color.fromARGB(255, 218, 213, 213),  
                                      ),
                                      child: Center(child: Text("${categoryname[index]}",
                                      style: TextStyle(color: index == selectedindex ? Colors.white : Colors.black)
                                      )),
                                    ),
                                  );
                                }
                                ),
                            ),
                          ),
                          Positioned(
                            top: h * 0.3,
                            left: w * 0.05,
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.8,
                              // margin: EdgeInsets.only(left: 20,right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color.fromARGB(255, 218, 213, 213))
                              ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: h * 0.025,
                                  left: w * 0.04,
                                  child: Icon(Icons.flight,color: Colors.orange,)),
                                  Positioned(
                                    top: h * 0.015,
                                    left: w * 0.14,
                                    child: Text("To",style: TextStyle(color: Color(0xffafafaf)),)),
                                    Positioned(
                                        top: h * 0.05,
                                        left: w * 0.14,
                                      child: Text("Barstow,BSW",style: TextStyle(fontSize: 16),))
                              ],
                            ),
                            ),
                          ),
                          Positioned(
                            top: h * 0.16,
                            left: w * 0.05,
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.8,
                              // margin: EdgeInsets.only(left: 20,right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color.fromARGB(255, 218, 213, 213))
                              ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: h * 0.025,
                                  left: w * 0.04,
                                  child: Icon(Icons.flight,color: Colors.orange,)),
                                  Positioned(
                                    top: h * 0.015,
                                    left: w * 0.14,
                                    child: Text("From",style: TextStyle(color: Color(0xffafafaf)),)),
                                    Positioned(
                                        top: h * 0.05,
                                        left: w * 0.14,
                                      child: Text("London,NCD",style: TextStyle(fontSize: 16),))
                              ],
                            ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: h * 0.1,
                      width: w,
                      child: Stack(
                        children: [
                          Positioned(
                            top: h * 0.025,
                            left: w * 0.06,
                            child: Text("Sort By",style: TextStyle(color: Color(0xffafafaf),fontSize: 15,fontWeight: FontWeight.bold),)),
                             Positioned(
                          // top: h * 0.01,
                          left: w * 0.25,
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
                             decoration:InputDecoration(
                  hintText: "Select Price",
                  // hintStyle: ,
                  contentPadding: EdgeInsets.only(top: h * 0.02),
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
                    SizedBox(height: 10,),
                      Container(
                    height: h * 0.4,
                    width: w,
                    margin: EdgeInsets.all(13),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned(top: h * 0.008,left: w * 0.07,child: Container(width: w * 0.8,child: Image.asset("assets/screenone/flight.jpg"))),
                        Positioned(top: h * 0.23,left: w * 0.04,child: Text("Flight Yogyakarta",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                        Positioned(top: h * 0.23,left: w * 0.6,child: Text("HJB - JKM",style: TextStyle(fontSize: 20,color: Color(0xffafafaf),fontWeight: FontWeight.bold),)),
                        Positioned(top: h * 0.31,left: w * 0.04,child: Icon(Icons.timer,color: Colors.green,)),
                        Positioned(top: h * 0.317,left: w * 0.12,child: Text("10.00 AM - 12.00 PM",style: TextStyle(color: Color(0xffafafaf),fontWeight: FontWeight.bold),)),
                        Positioned(top: h * 0.31,left: w * 0.6,child: InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, 
                            MaterialPageRoute(builder: (context)=>ScreenSix()));
                          },
                          child: Text("Book Now >",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),)))
                      ]
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