import 'dart:ffi';

import 'package:flutter/material.dart';


class CryptoCard extends StatelessWidget {

  String? name;
  ImageProvider? image;
  String? price;
  String? change24h;
  String? marketCap;
  Color? change24h_color;

 CryptoCard({
   required this.name,
   required this.image,
   required this.price,
   required this.change24h_color,
   required this.change24h,
   required this.marketCap,

 });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.95,
        height:MediaQuery.of(context).size.height*0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height:MediaQuery.of(context).size.height*0.12,
              width: MediaQuery.of(context).size.width*0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image!,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.02,
            ),
            Column(
              children: [
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.03,
                ),
                Text(
                   name!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ) ,
                ),
                Text(
                  "24h: ${change24h} \%",
                  style: TextStyle(
                    color: change24h_color,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ) ,
                ),

              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.05,
            ),
            Column(
              children: [
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.030,
                ),
                Text(
                  "${price} \$",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ) ,
                ),
                Text(
                  "Cap: ${marketCap} B\$",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ) ,
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

