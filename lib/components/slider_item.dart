import 'package:flutter/material.dart';

Widget sliderItem(String img, String movieName){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover
            )
          ),
        ),
        SizedBox(height: 15,),
        Text(
          movieName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}