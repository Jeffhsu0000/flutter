import 'package:flutter/material.dart';
import 'package:plant_app/components/featured_plants.dart';
import 'package:plant_app/components/header_with_searchbox.dart';
import 'package:plant_app/components/recomend_plants.dart';
import 'package:plant_app/components/title_with_more_btn.dart';
import 'package:plant_app/constraints.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us totol height and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
