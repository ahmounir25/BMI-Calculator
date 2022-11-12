import 'package:flutter/material.dart';
import 'package:untitled/BMI_Calc.dart';

class resultScreen extends StatelessWidget {
  final double result;
  final int age;
  final bool isMale;
  resultScreen({
    required this.result,
    required this.age,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
     /*  leading: IconButton(
           onPressed: (){
             Navigator.pop(context);
           },
           icon: Icon(Icons.arrow_back_ios)
       ),*/
       title: Text('BMI Result'),
       backgroundColor: Colors.black.withOpacity(0.3),
     ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              borderRadius:
              BorderRadiusDirectional.circular(15),
              color: Colors.black.withOpacity(0.3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Gender : ${isMale ? 'Male':'Female'}',
                  style:
                  TextStyle(
                      color: Colors.black,
                  fontSize: 30,)
                ),
                SizedBox(height: 15,),
                Text('Result : ${result.round()}',
                    style:
                    TextStyle(
                      color: Colors.black,
                      fontSize: 30,)
                ),
                SizedBox(height: 15,),
                Text('Age : $age',
                    style:
                    TextStyle(
                      color: Colors.black,
                      fontSize: 30,)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
