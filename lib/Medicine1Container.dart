import 'package:flutter/material.dart';

import 'main.dart';

var kButton1ColorMorning= Colors.white;
var kText1ColorMorning = Colors.black;
var kButton2ColorMorning= Colors.white;
var kText2ColorMorning = Colors.black;
var kButton3ColorMorning= Colors.blue;
var kButton1ColorAfternoon= Colors.white;
var kText1ColorAfternoon = Colors.black;
var kButton2ColorAfternoon= Colors.white;
var kText2ColorAfternoon = Colors.black;
var kButton3ColorAfternoon= Colors.blue;
var kButton1ColorNight= Colors.white;
var kText1ColorNight = Colors.black;
var kButton2ColorNight= Colors.white;
var kText2ColorNight = Colors.black;
var kButton3ColorNight= Colors.blue;

String medicine1="Medicine 1: ";
String timing1morning="";
String timing1afternoon="";
String timing1night="";

TextEditingController Medicine1 = new TextEditingController();

class Medicine1Container extends StatefulWidget {
  const Medicine1Container({Key? key}) : super(key: key);

  @override
  State<Medicine1Container> createState() => _Medicine1ContainerState();
}

class _Medicine1ContainerState extends State<Medicine1Container> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          border:  Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(

                controller: Medicine1,
                onChanged: (String value){
                  medicine1 ="Medicine 1: "+ value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Medicine 1" ,
                ),
              ),
            ),
            SizedBox(height: 15),

            Column(
              children: [
                // morning timing selector
                Row(
                  children: [



                    MaterialButton(
                      shape: kBorderShape,
                      onPressed: (){
                        timing1morning="morning: before meal";

                        setState(() {
                          kButton1ColorMorning = Colors.blue;
                          kButton2ColorMorning = Colors.white;


                          kText1ColorMorning =Colors.white;
                          kText2ColorMorning=Colors.black;
                        });

                      },


                      child: Text("Before Meal ", style: TextStyle(color: kText1ColorMorning),),
                      color: kButton1ColorMorning,


                    ),

                    SizedBox(width: 15,),

                    MaterialButton(
                      minWidth: 25,

                      shape: kBorderShape,

                      color: kSecondaryGreen,






                      onPressed: (){
                        timing1morning = "";
                        setState(() {
                          kButton2ColorMorning = Colors.white;
                          kButton1ColorMorning = Colors.white;
                          kText2ColorMorning =Colors.black;
                          kText1ColorMorning=Colors.black;
                          kButton3ColorMorning=Colors.blue;
                        });


                      },

                    ),
                    SizedBox(width: 15,),

                    MaterialButton(
                      shape: kBorderShape,

                      child: Text("After Meal ", style: TextStyle(color: kText2ColorMorning),),
                      color: kButton2ColorMorning,
                      onPressed: (){
                        timing1afternoon="morning: after meal";
                        setState(() {
                          kButton2ColorMorning = Colors.blue;
                          kButton1ColorMorning = Colors.white;

                          kText2ColorMorning =Colors.white;
                          kText1ColorMorning=Colors.black;
                        });



                      },

                    ),
                  ],
                ),
// afternoon timing selector
                Row(
                  children: [
                    MaterialButton(
                      shape: kBorderShape,

                      child: Text("Before Meal ", style: TextStyle(color: kText1ColorAfternoon),),
                      color: kButton1ColorAfternoon,
                      onPressed: (){
                        timing1afternoon=", Afternoon: before meal";

                        setState(() {
                          kButton1ColorAfternoon = Colors.blue;
                          kButton2ColorAfternoon = Colors.white;

                          kText1ColorAfternoon =Colors.white;
                          kText2ColorAfternoon=Colors.black;
                        });

                      },

                    ),
                    SizedBox(width: 15,),
                    MaterialButton(
                      minWidth: 25,
                      color: kSecondaryGreen,
                      shape: kBorderShape,

                      onPressed: (){
                        timing1afternoon = "";
                        setState(() {
                          kButton2ColorAfternoon = Colors.white;
                          kButton1ColorAfternoon = Colors.white;
                          kText2ColorAfternoon =Colors.black;
                          kText1ColorAfternoon=Colors.black;
                          kButton3ColorAfternoon=Colors.blue;
                        });
                      },

                    ),

                    SizedBox(width: 15,),

                    MaterialButton(
                      shape: kBorderShape,

                      child: Text("After Meal ", style: TextStyle(color: kText2ColorAfternoon),),
                      color: kButton2ColorAfternoon,
                      onPressed: (){
                        timing1afternoon=", Afternoon: after meal";
                        setState(() {
                          kButton2ColorAfternoon = Colors.blue;
                          kButton1ColorAfternoon = Colors.white;

                          kText2ColorAfternoon =Colors.white;
                          kText1ColorAfternoon=Colors.black;

                        });



                      },

                    ),
                  ],
                ),
//night timing selector
                Row(
                  children: [
                    MaterialButton(
                      shape: kBorderShape,
                      child: Text("Before Meal ", style: TextStyle(color: kText1ColorNight),),
                      color: kButton1ColorNight,
                      onPressed: (){
                        timing1night=", Night: before meal";

                        setState(() {
                          kButton1ColorNight = Colors.blue;
                          kButton2ColorNight = Colors.white;


                          kText1ColorNight=Colors.white;
                          kText2ColorNight=Colors.black;
                        });

                      },

                    ),
                    SizedBox(width: 15,),

                    MaterialButton(
                      minWidth: 25,
                      color:  kSecondaryGreen,
                      shape: kBorderShape,




                      onPressed: (){
                        timing1afternoon = "";
                        setState(() {
                          kButton2ColorNight = Colors.white;
                          kButton1ColorNight = Colors.white;
                          kText2ColorNight =Colors.black;
                          kText1ColorNight=Colors.black;
                          kButton3ColorNight=Colors.blue;
                        });


                      },

                    ),
                    SizedBox(width: 15,),

                    MaterialButton(
                      shape: kBorderShape,
                      child: Text("After Meal ", style: TextStyle(color: kText2ColorNight),),
                      color: kButton2ColorNight,
                      onPressed: (){
                        timing1night=", Night: after meal";
                        setState(() {
                          kButton2ColorNight = Colors.blue;
                          kButton1ColorNight = Colors.white;

                          kText2ColorNight =Colors.white;
                          kText1ColorNight=Colors.black;
                        });



                      },

                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
