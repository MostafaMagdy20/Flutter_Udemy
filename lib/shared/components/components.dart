import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course/modules/web%20view/web_view_screen.dart';
import 'package:flutter_course/shared/todo_cubit/cubit.dart';
import 'package:flutter_course/shared/todo_cubit/states.dart';
import 'package:hexcolor/hexcolor.dart';

Widget defaultButton({
  double width = double.infinity,
  required String text,
  bool isupper = true,
  Color color = Colors.green,
  required VoidCallback function,
  double radius = 0.0,
}) =>
    Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width,
      child: MaterialButton(
        child: Text(
          isupper ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: function,
      ),
    );

Widget defaultTFF({
  Color tffColor = Colors.green,
  Color textColor = Colors.green,
  required TextEditingController controller,
  required TextInputType type,
  double borderRadius = 0.0,
  required String label,
  bool obscure = false,
  required IconData prefix,
  IconData? suffix,
  VoidCallback? suffixOnpressd,
  required Function(String?) validator,
  Function(String)? onchange,
  VoidCallback? onTap,
}) =>
    TextFormField(
      style: TextStyle(color: tffColor),
      validator: (String? value) => validator(value),
      onChanged: onchange,
      onTap: onTap,
      cursorColor: tffColor,
      controller: controller,
      keyboardType: type,
      obscureText: obscure,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: tffColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: tffColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: tffColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: tffColor),
            borderRadius: BorderRadius.circular(borderRadius)),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: tffColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        labelText: label,
        labelStyle: TextStyle(color: tffColor),
        prefixIcon: Icon(
          prefix,
          color: tffColor,
        ),
        suffixIcon: IconButton(
          onPressed: suffixOnpressd,
          icon: Icon(
            suffix,
            color: tffColor,
          ),
        ),
      ),
    );

Widget buildTaskItem(Map tasks, context) => Dismissible(
      key: Key(tasks['id'].toString()),
      background: Container(
        alignment: Alignment.centerLeft,
        color: Colors.white,
        child: Icon(
          Icons.delete,
          size: 50.0,
          color: Colors.red,
        ),
      ),
      secondaryBackground: Container(
        alignment: Alignment.centerRight,
        color: Colors.white,
        child: Icon(
          Icons.delete,
          size: 50.0,
          color: Colors.red,
        ),
      ),
      onDismissed: (direction) {
        AppCubit.get(context).deleteData(id: tasks['id']);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: HexColor('D9B44A'),
              radius: 50.0,
              child: Text(
                tasks['time'],
                style: TextStyle(
                    fontSize: 20.0,
                    color: HexColor('4F6457'),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tasks['title'],
                    style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor('4F6457'),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    tasks['date'],
                    style: TextStyle(fontSize: 15.0, color: Colors.black54),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {
                  AppCubit.get(context).updateDatabase(
                    status: 'done',
                    id: tasks['id'],
                  );
                },
                icon: Icon(
                  Icons.check_box,
                  size: 35.0,
                  color: HexColor('#08f71f'),
                )),
            IconButton(
                onPressed: () {
                  AppCubit.get(context).updateDatabase(
                    status: 'archived',
                    id: tasks['id'],
                  );
                },
                icon: Icon(
                  Icons.archive,
                  size: 35.0,
                  color: HexColor('2D4262'),
                )),
          ],
        ),
      ),
    );

Widget taskItem(List<Map> tasks) => ConditionalBuilder(
      condition: tasks.isNotEmpty,
      builder: (context) => ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildTaskItem(tasks[index], context),
          separatorBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: HexColor('D9B44A'),
                ),
              ),
          itemCount: tasks.length),
      fallback: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.dashboard_customize,
              size: 100.0,
              color: HexColor('D9B44A'),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'No Tasks Yet, Add Some Tasks Now',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black26),
            ),
          ],
        ),
      ),
    );

Widget buildArticleItem(article, context) => BlocConsumer<AppCubit , AppStates>(
  listener: (context , state) {},
  builder: (context , state)
  {
    return GestureDetector(
      onTap: ()
      {
        navigateTo(context, WebViewScreen(article['url']));
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 130.0,
              height: 130.0,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2 ,
                  color: AppCubit.get(context).isDark? Colors.white : Colors.black,
                ),
                borderRadius: BorderRadius.circular(60.0),
                image: article['urlToImage'] != null
                    ? DecorationImage(
                  image: NetworkImage('${article['urlToImage']}'),
                  fit: BoxFit.cover,
                )
                    : const DecorationImage(
                  image: AssetImage('assets/images/Image_not_available.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Container(
                height: 130.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${article['title']}',
                        style: Theme.of(context).textTheme.bodyLarge,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '${article['publishedAt']}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  },
);

Widget articleListBuilder(article , context , {isSearch = false})
{
  return BlocConsumer<AppCubit , AppStates>(
    listener: (context , state) {},
    builder: (context , state)
    {
      return ConditionalBuilder(
        condition: article.isNotEmpty,
        builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => buildArticleItem(article[index], context),
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10.0),
              child: AppCubit.get(context).isDark
                  ? Container(
                height: 1.0,
                color: Colors.white,
              )
                  : Container(
                height: 1.0,
                color: Colors.black,
              ),
            ),
            itemCount: article.length
        ),
        fallback: (context) => isSearch ? Container() : AppCubit.get(context).isDark ? Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            )) : Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            )),
      );
    },
  );
}

void navigateTo(context , widget) => Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => widget
    )
);




