import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course/modules/News%20App/business/business_screen.dart';
import 'package:flutter_course/modules/News%20App/science/science_screen.dart';
import 'package:flutter_course/modules/News%20App/sport/sports_screen.dart';
import 'package:flutter_course/shared/network/remote/dio_helper.dart';
import 'package:flutter_course/shared/news_cubit/states.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 1;

  List<Widget> screens =
  [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen()
  ];

  void changeBottomNavBar(index)
  {
    currentIndex = index;

    emit(NewsBottomNavBarStates());
  }

  List<dynamic> business = [];

  void getBusinessData()
  {
    emit(NewsGetBusinessLoadingStates());
    DioHelper.getData(
        url: 'v2/top-headlines',
        query:
        {
          'country':'eg',
          'category':'business',
          'apiKey':'b09a5fbf2af64b71a5fe6fd787d1b9bf'
        }
    ).then((value)
    {
      business = value.data['articles'];
      emit(NewsGetBusinessSuccessStates());
    }).catchError((error)
    {
      print(error.toString());
      emit(NewsGetBusinessErrorStates(error.toString()));
    });
  }

  List<dynamic> sports = [];

  void getSportsData()
  {

    emit(NewsGetSportsLoadingStates());
    DioHelper.getData(
        url: 'v2/top-headlines',
        query:
        {
          'country':'eg',
          'category':'sports',
          'apiKey':'b09a5fbf2af64b71a5fe6fd787d1b9bf'
        }
    ).then((value)
    {
      sports = value.data['articles'];
      emit(NewsGetSportsSuccessStates());
    }).catchError((error)
    {
      print(error.toString());
      emit(NewsGetSportsErrorStates(error.toString()));
    });
  }

  List<dynamic> science = [];

  void getScienceData()
  {
    emit(NewsGetScienceLoadingStates());
    DioHelper.getData(
        url: 'v2/top-headlines',
        query:
        {
          'country':'eg',
          'category':'science',
          'apiKey':'b09a5fbf2af64b71a5fe6fd787d1b9bf'
        }
    ).then((value)
    {
      science = value.data['articles'];
      emit(NewsGetScienceSuccessStates());
    }).catchError((error)
    {
      print(error.toString());
      emit(NewsGetScienceErrorStates(error.toString()));
    });
  }

  List<dynamic> search = [];

  void getSearchData(String value)
  {
    search = [];
    emit(NewsGetSearchLoadingStates());

    DioHelper.getData(
        url: 'v2/everything',
        query:
        {
          'q':value,
          'apiKey':'b09a5fbf2af64b71a5fe6fd787d1b9bf'
        }
    ).then((value)
    {
      search = value.data['articles'];
      emit(NewsGetSearchSuccessStates());
    }).catchError((error)
    {
      print(error.toString());
      emit(NewsGetSearchErrorStates(error.toString()));
    });
  }


}