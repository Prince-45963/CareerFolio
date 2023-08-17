import 'package:flutter/material.dart';

gradientDecoration(){
  return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0.1,
          0.9,
        ],
        colors: [
          Color(0xFF234F4A),
          Color(0xFF3B9F9A)
        ],
      )
  );
}