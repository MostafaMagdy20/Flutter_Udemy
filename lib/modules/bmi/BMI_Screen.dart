import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/modules/bmi%20result/BMI_result_screen.dart';


class BmiScreen extends StatefulWidget {

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  bool male = true;
  double height = 150;
  int weight = 70;
  int age = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        shadowColor: Colors.red[500],
        backgroundColor: Colors.grey[400],
        elevation: 15.0,
        title: const Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
               children: [
                 Expanded(
                   child: GestureDetector(
                     onTap: ()
                     {
                       setState(() {
                         male = true;
                       });
                     },
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(18.0),
                         color: male? Colors.red[500] : Colors.grey
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: const [
                           Image(
                             image: AssetImage('assets/images/male.png'),
                             width: 80.0,
                             height: 80.0,
                           ),
                           Text(
                             'Male',
                             style: TextStyle(
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(
                   width: 15.0,
                 ),
                 Expanded(
                   child: GestureDetector(
                     onTap: ()
                     {
                       setState(() {
                         male = false;
                       });
                     },
                     child: Container(
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(18.0),
                           color: !male? Colors.red[500] : Colors.grey
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: const [
                           Image(
                             image: AssetImage('assets/images/female.png'),
                             width: 80.0,
                             height: 80.0,
                           ),
                           Text(
                             'Female',
                             style: TextStyle(
                                 fontSize: 25.0,
                                 fontWeight: FontWeight.bold
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.red[500]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        activeColor: Colors.black,
                        inactiveColor: Colors.grey[400],
                        value: height,
                        max: 220,
                        min: 90,
                        onChanged: (value)
                        {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Colors.red[500]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.grey[400],
                                heroTag: 'weight-',
                                mini: true,
                                child: const Icon(
                                  Icons.remove
                                ),
                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.grey[400],
                                heroTag: 'weight+',
                                mini: true,
                                child: const Icon(
                                    Icons.add
                                ),

                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Colors.red[500]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Age',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    age--;
                                  });
                                },
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.grey[400],
                                heroTag: 'age-',
                                mini: true,
                                child: const Icon(
                                    Icons.remove
                                ),
                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    age++;
                                  });
                                },
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.grey[400],
                                heroTag: 'age+',
                                mini: true,
                                child: const Icon(
                                    Icons.add
                                ),
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
            color: Colors.red[500],
            width: double.infinity,
            child: MaterialButton(
              focusColor: Colors.grey[400],
              height: 40.0,
              onPressed: ()
              {
                var result = weight / pow(height/100 , 2);
                print(result.round());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BmiResult(
                          age: age,
                          gender: male,
                          result: result.round(),

                        ))
                );
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
