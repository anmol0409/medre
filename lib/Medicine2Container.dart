import 'package:flutter/material.dart';
import 'main.dart';
bool visible2 = false;
String medicine2Details="";
String medicine2="";
String timing2morning="";
String timing2afternoon="";
String timing2night="";


var kM2Button1ColorMorning= Colors.white;
var kM2Text1ColorMorning = Colors.black;
var kM2Button2ColorMorning= Colors.white;
var kM2Text2ColorMorning = Colors.black;
var kM2Button3ColorMorning= Colors.blue;
var kM2Button1ColorAfternoon= Colors.white;
var kM2Text1ColorAfternoon = Colors.black;
var kM2Button2ColorAfternoon= Colors.white;
var kM2Text2ColorAfternoon = Colors.black;
var kM2Button3ColorAfternoon= Colors.blue;
var kM2Button1ColorNight= Colors.white;
var kM2Text1ColorNight = Colors.black;
var kM2Button2ColorNight= Colors.white;
var kM2Text2ColorNight = Colors.black;
var kM2Button3ColorNight= Colors.blue;

TextEditingController Medicine2 = new TextEditingController();

class Medicine2Container extends StatefulWidget {
  const Medicine2Container({Key? key}) : super(key: key);

  @override
  State<Medicine2Container> createState() => _Medicine2ContainerState();
}

class _Medicine2ContainerState extends State<Medicine2Container> {

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible2,
      child: Container(

        child: Padding(
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

                    controller: Medicine2,
                    onChanged: (String value){
                      medicine2 = ", Medicine 2: "+value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Medicine 2" ,
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
                            timing2morning="morning: before meal";

                            setState(() {
                              kM2Button1ColorMorning = Colors.blue;
                              kM2Button2ColorMorning = Colors.white;


                              kM2Text1ColorMorning =Colors.white;
                              kM2Text2ColorMorning=Colors.black;
                            });

                          },


                          child: Text("Before Meal ", style: TextStyle(color: kM2Text1ColorMorning),),
                          color: kM2Button1ColorMorning,


                        ),

                        SizedBox(width: 15,),

                        MaterialButton(
                          minWidth: 25,

                          shape: kBorderShape,

                          color: kSecondaryGreen,






                          onPressed: (){
                            timing2morning = "";
                            setState(() {
                              kM2Button2ColorMorning = Colors.white;
                              kM2Button1ColorMorning = Colors.white;
                              kM2Text2ColorMorning =Colors.black;
                              kM2Text1ColorMorning=Colors.black;
                              kM2Button3ColorMorning=Colors.blue;
                            });


                          },

                        ),
                        SizedBox(width: 15,),

                        MaterialButton(
                          shape: kBorderShape,

                          child: Text("After Meal ", style: TextStyle(color: kM2Text2ColorMorning),),
                          color: kM2Button2ColorMorning,
                          onPressed: (){
                            timing2afternoon="morning: after meal";
                            setState(() {
                              kM2Button2ColorMorning = Colors.blue;
                              kM2Button1ColorMorning = Colors.white;

                              kM2Text2ColorMorning =Colors.white;
                              kM2Text1ColorMorning=Colors.black;
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

                          child: Text("Before Meal ", style: TextStyle(color: kM2Text1ColorAfternoon),),
                          color: kM2Button1ColorAfternoon,
                          onPressed: (){
                            timing2afternoon=", Afternoon: before meal";

                            setState(() {
                              kM2Button1ColorAfternoon = Colors.blue;
                              kM2Button2ColorAfternoon = Colors.white;

                              kM2Text1ColorAfternoon =Colors.white;
                              kM2Text2ColorAfternoon=Colors.black;
                            });

                          },

                        ),
                        SizedBox(width: 15,),
                        MaterialButton(
                          minWidth: 25,
                          color: kSecondaryGreen,
                          shape: kBorderShape,

                          onPressed: (){
                            timing2afternoon = "";
                            setState(() {
                              kM2Button2ColorAfternoon = Colors.white;
                              kM2Button1ColorAfternoon = Colors.white;
                              kM2Text2ColorAfternoon =Colors.black;
                              kM2Text1ColorAfternoon=Colors.black;
                              kM2Button3ColorAfternoon=Colors.blue;
                            });
                          },

                        ),

                        SizedBox(width: 15,),

                        MaterialButton(
                          shape: kBorderShape,

                          child: Text("After Meal ", style: TextStyle(color: kM2Text2ColorAfternoon),),
                          color: kM2Button2ColorAfternoon,
                          onPressed: (){
                            timing2afternoon=", Afternoon: after meal";
                            setState(() {
                              kM2Button2ColorAfternoon = Colors.blue;
                              kM2Button1ColorAfternoon = Colors.white;

                              kM2Text2ColorAfternoon =Colors.white;
                              kM2Text1ColorAfternoon=Colors.black;

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
                          child: Text("Before Meal ", style: TextStyle(color: kM2Text1ColorNight),),
                          color: kM2Button1ColorNight,
                          onPressed: (){
                            timing2night=", Night: before meal";

                            setState(() {
                              kM2Button1ColorNight = Colors.blue;
                              kM2Button2ColorNight = Colors.white;


                              kM2Text1ColorNight=Colors.white;
                              kM2Text2ColorNight=Colors.black;
                            });

                          },

                        ),
                        SizedBox(width: 15,),

                        MaterialButton(
                          minWidth: 25,
                          color:  kSecondaryGreen,
                          shape: kBorderShape,




                          onPressed: (){
                            timing2afternoon = "";
                            setState(() {
                              kM2Button2ColorNight = Colors.white;
                              kM2Button1ColorNight = Colors.white;
                              kM2Text2ColorNight =Colors.black;
                              kM2Text1ColorNight=Colors.black;
                              kM2Button3ColorNight=Colors.blue;
                            });


                          },

                        ),
                        SizedBox(width: 15,),

                        MaterialButton(
                          shape: kBorderShape,
                          child: Text("After Meal ", style: TextStyle(color: kM2Text2ColorNight),),
                          color: kM2Button2ColorNight,
                          onPressed: (){
                            timing2night=", Night: after meal";
                            setState(() {
                              kM2Button2ColorNight = Colors.blue;
                              kM2Button1ColorNight = Colors.white;

                              kM2Text2ColorNight =Colors.white;
                              kM2Text1ColorNight=Colors.black;
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
        ),
      ),
    );
  }
}
