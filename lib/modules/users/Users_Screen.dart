import 'package:flutter/material.dart';
import 'package:flutter_course/models/user/user_model.dart';


class UsersScreen extends StatelessWidget {
  List<UsersModel> users = [
    UsersModel(id: 1, name: 'Mostafa Magdy', phone: '01098548668'),
    UsersModel(id: 2, name: 'Mostafa Mohamed', phone: '01198548668'),
    UsersModel(id: 3, name: 'Mostafa Ali', phone: '01298548668'),
    UsersModel(id: 4, name: 'Mostafa Maged', phone: '01398548668'),
    UsersModel(id: 1, name: 'Mostafa Magdy', phone: '01098548668'),
    UsersModel(id: 2, name: 'Mostafa Mohamed', phone: '01198548668'),
    UsersModel(id: 3, name: 'Mostafa Ali', phone: '01298548668'),
    UsersModel(id: 4, name: 'Mostafa Maged', phone: '01398548668'),
    UsersModel(id: 1, name: 'Mostafa Magdy', phone: '01098548668'),
    UsersModel(id: 2, name: 'Mostafa Mohamed', phone: '01198548668'),
    UsersModel(id: 3, name: 'Mostafa Ali', phone: '01298548668'),
    UsersModel(id: 4, name: 'Mostafa Maged', phone: '01398548668'),
    UsersModel(id: 1, name: 'Mostafa Magdy', phone: '01098548668'),
    UsersModel(id: 2, name: 'Mostafa Mohamed', phone: '01198548668'),
    UsersModel(id: 3, name: 'Mostafa Ali', phone: '01298548668'),
    UsersModel(id: 4, name: 'Mostafa Maged', phone: '01398548668'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
        title: Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUsersItem(users[index]),
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  height: 2,
                  color: Colors.cyan[400],
                ),
              ),
          itemCount: users.length
      ),
    );
  }

  Widget buildUsersItem(UsersModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.cyan[400],
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                      color: Colors.cyan[400],
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.cyan[400],
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
