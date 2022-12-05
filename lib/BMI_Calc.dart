import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/resultScreen.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int Age=18;
  double Weight=45;
   bool IsMale=true;
   double Height=120;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.black.withOpacity(0.3),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector
                      (
                      onTap: (){
                        setState(() {
                          IsMale=true;
                        });

                      },
                      child: Container
                        (
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                            color: IsMale ? Colors.blue :Colors.black.withOpacity(0.3)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/Images/man.png'),
                              height:100 ,width: 100,
                            ),
                            SizedBox(height: 15,),
                            Text('Male',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState((){
                          IsMale=false;
                        });
                      },
                      child: Container
                        (
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                            color:!IsMale? Colors.blue :Colors.black.withOpacity(0.3)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/Images/woman.png'),
                            height: 100,width: 100,),
                            SizedBox(height: 15,),
                            Text('Female',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:8 ),
              child: Container(
                decoration:
                BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.3),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${Height.round()}',
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 80,
                          fontWeight: FontWeight.w800,
                        ),),
                        Text('cm',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                    Slider(
                        onChanged:(value)
                        {
                          setState(() {
                            Height=value;
                          });
                        },
                        activeColor: Colors.black,
                        inactiveColor: Colors.white24,
                        value:Height,
                        max:220.0 ,
                        min: 80,
                    )
                  ],
                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                          color: Colors.black.withOpacity(0.3)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text('$Age',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 80,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                     Age--;
                                   });
                                 },
                               heroTag: 'age-',
                               mini: true,
                             backgroundColor: Colors.black.withOpacity(0.3),
                             child: Icon(Icons.remove),
                             ),
                             //SizedBox(width: 5,),
                             FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                     Age++;
                                   });
                                 },
                               heroTag: 'age+',
                               mini: true,
                             backgroundColor: Colors.black.withOpacity(0.3),
                             child: Icon(Icons.add),
                             ),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                          color: Colors.black.withOpacity(0.3)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text('$Weight',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 80,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                     Weight-=0.5;
                                   });
                                 },
                               heroTag: 'weight-',
                               mini: true,
                             backgroundColor: Colors.black.withOpacity(0.3),
                             child: Icon(Icons.remove),
                             ),
                             //SizedBox(width: 5,),
                             FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                     Weight+=0.5;
                                   });
                                 },
                               mini: true,
                               heroTag: 'weight+',
                               backgroundColor: Colors.black.withOpacity(0.3),
                             child: Icon(Icons.add),
                             ),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
         Container(
           width:double.infinity,
          color: Colors.black.withOpacity(0.3),
          // height: double.infinity,
           child: MaterialButton(
             onPressed:(){
              double result = Weight/pow(Height/100, 2);
              print(result.round());
              Navigator.push(
                  context,//from
                  MaterialPageRoute(//to
                  builder: (context)=>
                      resultScreen(
                      result: result,
                      isMale:IsMale,
                      age: Age )
                  )
              );
             } ,
             height: 50,
            child: Text('Calculate',
              style: TextStyle(color: Colors.white,
               fontSize: 30,
                  fontWeight: FontWeight.bold)),
           ),
         )
        ],
      ),
    );
  }
}
