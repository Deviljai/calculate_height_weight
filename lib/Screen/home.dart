import 'package:calculate_height_weight/Constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../Widgets/left_bar.dart';
import '../Widgets/right_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _heightController= TextEditingController();
  TextEditingController _massController = TextEditingController();

  double result = 0;
  var textresult = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gr,
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: yelo,
            fontWeight: FontWeight.w300,
          ),
        ),
        backgroundColor: gr,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: yelo,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Height",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 42,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _massController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: yelo,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mass",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        color: Colors.white.withOpacity(.8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Container(
              child: GestureDetector(
                onTap: (){
                  double _h = double.parse(_heightController.text);
                  double _m = double.parse(_massController.text);
                  setState(() {
                    result = _m / (_h * _h);
                    if(result>50){
                      textresult = "You'r over weight";
                    }else if(result >=50 && result<=60){
                      textresult = "You have normal weight";
                    }else{
                      textresult = "You'r under weight";
                    }
                  });
                },
                child: Text("Calculate",style: TextStyle(color: yelo,fontSize: 25,fontWeight: FontWeight.w300),),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              child: Text(result.toStringAsFixed(2),style: TextStyle(fontSize: 70,color: yelo,fontWeight: FontWeight.w300),),
            ),
            SizedBox(height: 30,),
            Visibility(child: Text(textresult,style: TextStyle(color: yelo,fontSize: 25,fontWeight: FontWeight.w300),)),
            SizedBox(height: 20,),
            rightbar(barwidth: 40),
            SizedBox(height: 20,),
            rightbar(barwidth: 60),
            SizedBox(height: 20,),
            rightbar(barwidth: 30),
            SizedBox(height: 20,),
            leftbar(barwidth: 50),
            SizedBox(height: 40,),
            leftbar(barwidth: 50),
          ],
        ),
      ),
    );
  }
}
