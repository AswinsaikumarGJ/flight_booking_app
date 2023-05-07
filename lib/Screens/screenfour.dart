import 'package:flight_booking_app/Screens/screenthree.dart';
import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
  var h = MediaQuery.of(context).size.height;
  var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
         backgroundColor: Color.fromARGB(255, 218, 213, 213),
        body: Container(
          height: h,
          width: w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: h * 0.23,
                  width: w,
                  decoration: BoxDecoration(color: Color(0xff2a4441),borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                        )),
                        child: Stack(
                          children: [
                            Positioned(
                              top: h * 0.06,
                              left: w * 0.08,
                              child: Container(
                                width: w * 0.85,
                                child: TextField(
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
                                                borderSide: BorderSide(color: Colors.white)
                                              ),
                                              filled: true,
                                              fillColor: Colors.teal,
                                              hintText: 'Search...',
                                              hintStyle: TextStyle(color: Colors.white),
                                              prefixIcon: IconButton(
                                                icon: Icon(Icons.search,color: Colors.white,),
                                                onPressed: () {
                                                  
                                                },
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                            ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
                SizedBox(height: 20,),
                  Container(
                              height: h * 0.8,
                              width: w * 0.9,
                              child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (context,index){
                                  return InkWell(
                                    onTap: (){
                                      Navigator.pushReplacement(context, 
                                      MaterialPageRoute(builder: (context)=>ScreenThree()));
                                    },
                                    child: Container(
                                      height: h * 0.2,
                                      width: w * 0.9,
                                       margin: EdgeInsets.only(bottom: 20),
                                                           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: h * 0.02,
                                            left: w * 0.07,
                                            child: Text("Business Trip to New York",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                                            Positioned(
                                              top: h * 0.09,
                                              left: w * 0.07,
                                            child: Text("MCL",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),)),
                                            Positioned(
                                              top: h * 0.13,
                                              left: w * 0.07,
                                            child: Text("Jakarta",style: TextStyle(color: Color(0xffafafaf),fontSize: 16,fontWeight: FontWeight.bold),)),
                                             Positioned(top: h * 0.08,left: w * 0.39,child: Icon(Icons.flight,color: Colors.blue,)),
                                             Positioned(top: h * 0.13,left: w * 0.37,child: Text("2h 55m")),
                                             Positioned(
                                              top: h * 0.085,
                                              left: w * 0.62,
                                            child: Text("NYC",style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),)),
                                            Positioned(
                                              top: h * 0.126,
                                              left: w * 0.62,
                                            child: Text("New York",style: TextStyle(color: Color(0xffafafaf),fontSize: 16,fontWeight: FontWeight.bold),)),
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
    );
  }
}