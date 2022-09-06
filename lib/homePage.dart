import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'Medicine1Container.dart';
import 'Medicine2Container.dart';
import 'Medicine3Container.dart';

var medicineContainerCounter = 2;
var kPrimaryTeal = Colors.teal[400];
var kSecondaryGreen = Color(0xFF82DBD8);
const kBorderShape =RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)));
BuildContext context = context;

double kscreenWidth = MediaQuery.of(context).size.width;
double kscreenHeight = MediaQuery.of(context).size.height;

TextEditingController PhoneNumber = new TextEditingController();



void main() {
  runApp(const HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEDre',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'medRE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);




  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //values for toggle switches



  //variables for sending message
  String message = "";
  String recipents = "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryTeal,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              TextField(
                controller: PhoneNumber,
                onChanged: (String value2){
                  recipents = value2;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Patient's Phone Number" ,
                ),
              ),


              Medicine1Container(),
              Medicine2Container(),
              Medicine3Container(),
              // Medicine4Container(),
              // Medicine5Container(),


              MaterialButton(
                  child: Text('Add Medicine'),
                  onPressed: (){
                    setState(() {
                      if(medicineContainerCounter == 5){
                        // visible5 = true;
                        medicineContainerCounter++;
                      }

                      if(medicineContainerCounter == 4){
                        // visible4 = true;
                        medicineContainerCounter++;
                      }
                      if(medicineContainerCounter == 3){
                        visible3 = true;
                        medicineContainerCounter++;
                      }
                      if(medicineContainerCounter == 2){
                        visible2 = true;
                        medicineContainerCounter++;
                      }




                    });
                  }),





              MaterialButton(
                shape: kBorderShape,
                child: Text("Send Prescription", style: TextStyle(color:Colors.white),),
                color:kSecondaryGreen,
                onPressed: () async{
                  launch('sms:$recipents?body= $medicine1($timing1morning$timing1afternoon$timing1night)$medicine2($timing2morning$timing2afternoon$timing2night)$medicine3($timing3morning$timing3afternoon$timing3night)');
                  setState(() {

                  });

                },

              ),

            ],
          ),
        ),
      ),

    );
  }
}



