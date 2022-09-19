import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class zamalekScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        shadowColor: Colors.red,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'ZAMALEK SC',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        leading: const CircleAvatar(
          radius: 15.0,
          backgroundImage: NetworkImage(
            'https://i.pinimg.com/originals/e7/83/4f/e7834fb6fd4f1230f474bbdacda301de.jpg',
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                'https://www.kindpng.com/picc/m/417-4175420_20-zamalek-zamaleklogo-zamalkawy-freetoedit-emblem-hd-png.png',
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0
        ),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context , index) => TShirtItem(),
          itemCount: 1,
        ),
      ),
    );
  }

}

Widget TShirtItem() => Column(
  children: [
    const CircleAvatar(
      radius: 120.0,
      backgroundImage: NetworkImage(
        'https://i.pinimg.com/originals/f9/b7/5a/f9b75aa5bc10b796e0ffc95760876eb6.jpg',
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2022/06/23/PbI1Vu5GAEH5fhC.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '10/11 Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2022/05/14/xqAnhUDAWfoRCc8.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '10/11 Away',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2022/06/28/8YZkxx7XvmecNGQ.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '11/12 Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2022/06/28/9SkePBLZcspgaoS.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '11/12 Away',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/03/12/JUI4F8aufkwx30H.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '12/13 Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2022/05/14/uYSAxfLOCoXrQsf.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '12/13 Away',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/03/12/JUI4F8aufkwx30H.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '13/14 Home',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2022/05/14/uYSAxfLOCoXrQsf.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '13/14 Away',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/03/12/JUI4F8aufkwx30H.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '14/15 Home',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2022/08/01/87ySnmHG6a42Bm5.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '14/15 Away',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/04/09/JOrlZMt63iCQOfw.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '15/16 Home',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/04/09/DWCzik6apzbBiUW.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '15/16 Away',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/03/12/J74Cf3HHnb7oliX.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '16/17 Home',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/10/24/kmZkftGf2RdAayA.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '16/17 Away',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/10/24/YRPCCZkiJ9DcrEK.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '17/18 Home',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/10/24/9Vst3hH7rK7P0LW.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '17/18 Away',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/10/24/51ZqldGhQTPK1DO.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '18/19 Home',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/10/24/rjUraSe3PKulFvc.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '18/19 Away',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/10/24/AwX2GoozqC7HovL.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '18/19 Third',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/11/05/qkmG0fcuWXWto00.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '19/20 Home',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/11/05/qkmG0fcuWXWto00.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '20/21 Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/11/05/Co5vw65b6t7hAf0.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '20/21 Away',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/11/05/kI23SlVlSDImvax.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '20/21 Third',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2022/05/16/Bo34utmk9ih8uRp.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '2021',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/10/23/Imva7HOlFkqWycY.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '21/22 Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Container(
          width: 170,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Image(
                image: const NetworkImage(
                  'https://cdn.footballkitarchive.com/2021/10/23/hVeZku3vzdqiVwC.jpg',
                ),
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: 300.0,
                color: Colors.black.withOpacity(.3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '21/22 Away',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    const SizedBox(
      height: 15.0,
    ),
  ],
);