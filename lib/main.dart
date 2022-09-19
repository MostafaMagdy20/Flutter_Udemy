import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/layout/Todo%20Home/Todo_home.dart';
import 'package:flutter_course/modules/bmi/BMI_Screen.dart';
import 'package:flutter_course/modules/users/Users_Screen.dart';
import 'package:flutter_course/modules/zamalek/Zamalek.dart';
import 'package:flutter_course/modules/home/home.dart';
import 'package:flutter_course/shared/bloc_observer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'modules/login/Log_in_Screen.dart';

void main()
{
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          iconTheme: IconThemeData(
            color: HexColor('4F6457')   //arrow icon for go back
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: HexColor('D9B44A'),
          elevation: 50.0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: HexColor('4F6457'),
          unselectedItemColor: HexColor('4F6457'),
          showUnselectedLabels: false
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: zamalekScreen()
    );
  }

}


