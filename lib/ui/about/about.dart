import 'package:careerfolio/utils/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/gradient_decoration.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  gradientDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Container(
              width: 190.0,
              height: 190.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.cover,
                      image:  AssetImage("assets/user/men.jpeg")
                  )
              )),
          Container(
            decoration: gradientDecoration(),
            child: Column(
              children: [
                Text(userName),
                Text(designation),
                Text(location),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(Experience),
                          Text(LabelExperience),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(Age),
                          Text(LabelAge),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(Degree),
                          Text(LabelDegree),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
          ,
          Text(CareerObjective,style: TextStyle(fontFamily: 'Poppins',fontSize: 20),),
          Text("Signature")
        ],
      ),
      ),
    );
  }
}
