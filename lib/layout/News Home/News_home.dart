import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course/modules/News%20App/search/search_screen.dart';
import 'package:flutter_course/shared/components/components.dart';
import 'package:flutter_course/shared/news_cubit/cubit.dart';
import 'package:flutter_course/shared/news_cubit/states.dart';
import 'package:flutter_course/shared/todo_cubit/cubit.dart';

class NewsHome extends StatelessWidget {
  const NewsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , NewsStates>(
      listener: (context, state) {},
      builder: (context , state)
      {
        NewsCubit cubit = NewsCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: const Text(
                'News App'
            ),
            actions:
            [
              IconButton(
                  onPressed: ()
                  {
                    navigateTo(context, SearchScreen());
                  },
                  icon: const Icon(
                    Icons.search
                  ),
              ),
              IconButton(
                onPressed: ()
                {
                  AppCubit.get(context).changeAppMode();
                },
                icon: const Icon(
                    Icons.dark_mode
                ),
              )
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            index: cubit.currentIndex,
            onTap: (index)
            {
              cubit.changeBottomNavBar(index);
            },
            animationDuration: const Duration(milliseconds: 300),
            height: 58,
            color: AppCubit.get(context).isDark ? Colors.black : Colors.white,
            backgroundColor: AppCubit.get(context).isDark ? Colors.white : Colors.black,
            buttonBackgroundColor: AppCubit.get(context).isDark ? Colors.black : Colors.white,
            items:
            [
              Icon(
                Icons.business_outlined,
                color: AppCubit.get(context).isDark ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.sports_volleyball,
                color: AppCubit.get(context).isDark ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.science_outlined,
                color: AppCubit.get(context).isDark ? Colors.white : Colors.black,
              ),
            ],
          ),
        );
      },
    );
  }
}
