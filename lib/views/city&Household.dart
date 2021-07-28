import 'package:flutter/material.dart';
import 'package:sleep_app/constants/constants.dart';

class City_Household extends StatefulWidget {
  @override
  _City_HouseholdState createState() => _City_HouseholdState();
}

class _City_HouseholdState extends State<City_Household> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mainColumn(Icons.cloud_circle, "Forest forest"),
              mainColumn(Icons.cloud_circle, "Forest creek"),
              mainColumn(Icons.cloud_circle, "Rain leaves"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mainColumn(Icons.cloud_circle, "Forest birds"),
              mainColumn(Icons.cloud_circle, "Forest wwaterfall"),
              mainColumn(Icons.cloud_circle, "Forest wind"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mainColumn(Icons.cloud_circle, "Forest fire"),
              mainColumn(Icons.cloud_circle, "Rain grasshopper"),
              mainColumn(Icons.cloud_circle, "Rain frogs"),
            ],
          )
        ],
      ),
    );
  }
}
