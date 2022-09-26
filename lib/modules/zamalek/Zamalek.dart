import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZamalekScreen extends StatelessWidget {

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children:
              [
                const CircleAvatar(
                  radius: 120.0,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/f9/b7/5a/f9b75aa5bc10b796e0ffc95760876eb6.jpg',
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TShirtItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

Widget buildSeasonTShirts({
  required String imageHomeUrl,
  required String seasonHomeNO,
  required String imageAwayUrl,
  required String seasonAwayNO,

}) => Row(
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
          Image(
            image: NetworkImage(
              imageHomeUrl
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
            child: Text(
              seasonHomeNO,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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
          Image(
            image: NetworkImage(
              imageAwayUrl,
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
            child: Text(
              seasonAwayNO,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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
);

Widget TShirtItem() => Column(
  children:
  [
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2022/06/23/PbI1Vu5GAEH5fhC.jpg', seasonHomeNO: '10/11 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2022/05/14/xqAnhUDAWfoRCc8.jpg', seasonAwayNO: '10/11 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2022/06/28/8YZkxx7XvmecNGQ.jpg', seasonHomeNO: '11/12 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2022/06/28/9SkePBLZcspgaoS.jpg', seasonAwayNO: '11/12 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/03/12/JUI4F8aufkwx30H.jpg', seasonHomeNO: '12/13 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2022/05/14/uYSAxfLOCoXrQsf.jpg', seasonAwayNO: '12/13 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/03/12/JUI4F8aufkwx30H.jpg', seasonHomeNO: '13/14 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2022/05/14/uYSAxfLOCoXrQsf.jpg', seasonAwayNO: '13/14 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/03/12/JUI4F8aufkwx30H.jpg', seasonHomeNO: '14/15 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2022/08/01/87ySnmHG6a42Bm5.jpg', seasonAwayNO: '14/15 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/04/09/JOrlZMt63iCQOfw.jpg', seasonHomeNO: '15/16 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2021/04/09/DWCzik6apzbBiUW.jpg', seasonAwayNO: '15/16 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/03/12/J74Cf3HHnb7oliX.jpg', seasonHomeNO: '16/17 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2021/10/24/kmZkftGf2RdAayA.jpg', seasonAwayNO: '16/17 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/10/24/YRPCCZkiJ9DcrEK.jpg', seasonHomeNO: '17/18 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2021/10/24/9Vst3hH7rK7P0LW.jpg', seasonAwayNO: '17/18 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/10/24/51ZqldGhQTPK1DO.jpg', seasonHomeNO: '18/19 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2021/10/24/rjUraSe3PKulFvc.jpg', seasonAwayNO: '18/19 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/10/24/AwX2GoozqC7HovL.jpg', seasonHomeNO: '18/19 Third', imageAwayUrl: 'https://cdn.footballkitarchive.com/2021/11/05/qkmG0fcuWXWto00.jpg', seasonAwayNO: '19/20 Home'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/11/05/qkmG0fcuWXWto00.jpg', seasonHomeNO: '20/21 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2021/11/05/Co5vw65b6t7hAf0.jpg', seasonAwayNO: '20/21 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/11/05/kI23SlVlSDImvax.jpg', seasonHomeNO: '20/21 Third', imageAwayUrl: 'https://cdn.footballkitarchive.com/2022/05/16/Bo34utmk9ih8uRp.jpg', seasonAwayNO: '2021'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.footballkitarchive.com/2021/10/23/Imva7HOlFkqWycY.jpg', seasonHomeNO: '21/22 Home', imageAwayUrl: 'https://cdn.footballkitarchive.com/2021/10/23/hVeZku3vzdqiVwC.jpg', seasonAwayNO: '21/22 Away'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.shopify.com/s/files/1/0276/4793/4541/products/Leisure-T-Shirt-Grey_750x.jpg?v=1646927651', seasonHomeNO: '21/22 Gray DryFit', imageAwayUrl: 'https://cdn.shopify.com/s/files/1/0276/4793/4541/products/Warm-Up-Away_750x.jpg?v=1643893739', seasonAwayNO: '21/22 Blue WarmUp'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.shopify.com/s/files/1/0276/4793/4541/products/champions-Cotton-Tshirt-white_750x.png.jpg?v=1661193140', seasonHomeNO: '21/22 League Champions', imageAwayUrl: 'https://cdn.shopify.com/s/files/1/0276/4793/4541/products/Leisure-Cotton-Tshirt-Graphic-1Cup_750x.jpg?v=1658435862', seasonAwayNO: '21/22 Cup Champions'),
    seperator(),
    buildSeasonTShirts(imageHomeUrl: 'https://cdn.shopify.com/s/files/1/0276/4793/4541/products/ZAMALEK-2023-MATCH-HOME4U5-min_750x.jpg?v=1662987046', seasonHomeNO: '22/23 Home', imageAwayUrl: 'https://cdn.shopify.com/s/files/1/0276/4793/4541/products/ZAMALEK-2023-MATCH-AWAY-Front_750x.png.jpg?v=1663863830', seasonAwayNO: '22/23 Away'),
    seperator(),


  ],
);

Widget seperator() => const SizedBox(height: 15.0);


