import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
                Icons.account_circle
            ),
            onPressed: (){
              print("This is my profile");
            }),
        title: Text(
            "FCIS"
        ) ,
        centerTitle: true,
        backgroundColor: Colors.black54.withOpacity(0.5) ,
        elevation: 10.0 ,
        actions: [
          IconButton(
              icon: Icon(
                  Icons.search
              ),
              onPressed: ()
              {
                print("3lekkkooom elsalllaaaam");
              }),
          IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: ()
              {
                print("Samo 3llllleeeeekoooo");
              }
          ),
        ],
      ),
      body: Container(
        // padding: EdgeInsetsDirectional.only(
        //   top: (25.0)
        // ),
        width: double.infinity,
        child: Container(
          padding: EdgeInsetsDirectional.only(
              top: 20.0
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center ,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        40.0
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image(
                    image: NetworkImage(
                      'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/274138006_3373475146209253_7574004382572349253_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=5b7eaf&_nc_ohc=QBL7-pDkubsAX_7Xz_A&_nc_ht=scontent.fcai19-3.fna&oh=00_AT-K4USXIe2xejPANN8_dV3vaU8BBUq_cXpl1aOq3DWX_g&oe=6259B140'
                    ),
                    width: 200.0,
                    height: 300.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 200.0,
                  color: Colors.black.withOpacity(.0),
                  padding: EdgeInsetsDirectional.only(
                      top: (10.0),
                      bottom: (10.0)
                  ),
                  child: Text(
                    "Mostafa Magdy" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54.withOpacity(0.5),
                      fontSize: 20.0,
                      //height: 2.5,
                      //letterSpacing: 8.0
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        40.0
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image(
                    image: NetworkImage(
                        'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/274138006_3373475146209253_7574004382572349253_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=5b7eaf&_nc_ohc=QBL7-pDkubsAX_7Xz_A&_nc_ht=scontent.fcai19-3.fna&oh=00_AT-K4USXIe2xejPANN8_dV3vaU8BBUq_cXpl1aOq3DWX_g&oe=6259B140'
                    ),
                    width: 200.0,
                    height: 300.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 200.0,
                  color: Colors.black.withOpacity(.0),
                  padding: EdgeInsetsDirectional.only(
                      top: (25.0),
                      bottom: (10.0)
                  ),
                  child: Text(
                    "Mostafa Magdy" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54.withOpacity(0.5),
                      fontSize: 20.0,
                      //height: 2.5,
                      //letterSpacing: 8.0
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        40.0
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image(
                    image: NetworkImage(
                        'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/274138006_3373475146209253_7574004382572349253_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=5b7eaf&_nc_ohc=QBL7-pDkubsAX_7Xz_A&_nc_ht=scontent.fcai19-3.fna&oh=00_AT-K4USXIe2xejPANN8_dV3vaU8BBUq_cXpl1aOq3DWX_g&oe=6259B140'
                    ),
                    width: 200.0,
                    height: 300.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 200.0,
                  color: Colors.black.withOpacity(.0),
                  padding: EdgeInsetsDirectional.only(
                      top: (25.0),
                      bottom: (10.0)
                  ),
                  child: Text(
                    "Mostafa Magdy" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54.withOpacity(0.5),
                      fontSize: 20.0,
                      //height: 2.5,
                      //letterSpacing: 8.0
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}