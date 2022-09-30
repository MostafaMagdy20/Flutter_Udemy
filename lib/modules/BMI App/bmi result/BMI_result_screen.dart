import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool gender;
  final int age;
  final int result;

  BmiResult({
    required this.gender,
    required this.age,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.red[500],
        backgroundColor: Colors.grey[400],
        elevation: 15.0,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'BMI Result',
          style: TextStyle(
              color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 20, bottom: 10),
            child: Text(
              "Your Result",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${gender ? 'Male' : 'Female'}',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '$result',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 70,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Normal BMI Range: 18.5 - 25 kg/m2',
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700),
                  ),
                  result < 25
                      ? Text(
                          'Normal',
                          style: TextStyle(fontSize: 50.0,
                          fontWeight: FontWeight.w600),
                        )
                      : Text(
                          'Over Weight',
                          style: TextStyle(fontSize: 50.0,
                              fontWeight: FontWeight.w600),
                        )
                ],
              ),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.red[500],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20.0 ),
// child: Container(
// decoration: BoxDecoration(
// color: Colors.red[500],
// shape: BoxShape.circle,
// ),
// child: Center(
// child: Padding(
// padding: const EdgeInsets.all(40.0),
// child: Container(
// decoration: BoxDecoration(
// color: Colors.red[500],
// borderRadius: BorderRadius.circular(10.0)
// ),
// //width: double.infinity,
// child: Column(
// mainAxisSize: MainAxisSize.min,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// 'Gender: ${gender? 'Male' : 'Female'} ',
// style: const TextStyle(
// fontSize: 20.0,
// ),
// ),
// Text(
// 'Age: $age',
// style: const TextStyle(
// fontSize: 20.0,
// ),
// ),
// Text(
// 'Result: $result',
// style: const TextStyle(
// fontSize: 20.0,
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ),
//
// ),
// const SizedBox(
// height: 20.0,
// ),
// result < 25 ?
// Container(
// height: 30.0,
// width: 150.0,
// color: Colors.red[500],
// child: const Text(
// "Normal",
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 20.0,
//
// ),
//
// ),
// ) :
// Container(
// height: 30.0,
// width: 150.0,
// color: Colors.red[500],
// child: const Text(
// "Obese",
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 20.0,
//
// ),
//
// ),
// )
//
// ],
// )
