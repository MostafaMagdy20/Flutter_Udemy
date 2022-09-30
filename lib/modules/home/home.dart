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
        padding: EdgeInsetsDirectional.only(
          top: (25.0)
        ),
        width: double.infinity,
        child: Container(
          padding: EdgeInsetsDirectional.only(
              top: 20.0
          ),
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
                    'https://scontent.fcai19-3.fna.fbcdn.net/v/t1.6435-9/168914228_3136630126560424_6736165508846627314_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=kBUB28z84PsAX_lHYcA&_nc_ht=scontent.fcai19-3.fna&oh=00_AT-z-OMMUJ8MGe2j3BlOi_l9kNebsE7dqG_mIIrYPC4_1g&oe=635D310E'
                  ),
                  width: 200.0,
                  height: 300.0,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 200.0,
                color: Colors.black,
                padding: EdgeInsetsDirectional.only(
                    top: (10.0),
                    bottom: (10.0)
                ),
                child: Text(
                  "Mostafa Magdy" ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
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
    );
  }
}