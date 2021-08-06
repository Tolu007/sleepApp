import 'package:flutter/material.dart';
import 'package:sleep_app/constants/constants.dart';
import "package:sleep_app/views/mainHomePage.dart";

//double _sliderValue = 0.0;

//modal sheet to show playing sounds and work on volume
// modalSheet(BuildContext context) {
//   int length = volumeTracker.length;
//   print("Length is $length");
//   return showModalBottomSheet(
//     context: context,
//     builder: (context) {
//       return Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ListView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: volumeTracker.length,
//             itemBuilder: _buildListView,
//           ),
//         ],
//       );
//     },
//   );
// }

//list tile builder for the volume manipulation widget
// Widget _buildListView(BuildContext context, int index) {
//   return Container(
//     height: 100,
//     child: Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Icon(
//             volumeTracker.keys.elementAt(index),
//           ),
//           Slider(
//             value: _sliderValue,
//             onChanged: (double newValue) {
//               _sliderValue = newValue;

//             },
//             min: 0.0,
//             max: 1.0,
//             activeColor: mainPurpleColor,
//           ),
//           IconButton(
//             onPressed: () {
//               // volumeTracker.remove(WeatherIcons.wi_alien);
//               //  deleteVolumeListItem(index);
//             },
//             icon: Icon(
//               Icons.shopping_basket_outlined,
//               size: 20,
//               color: mainPurpleColor,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

//column to build icon widgets for individual sounds
Widget mainColumn(IconData icon, String name) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: EdgeInsets.only(bottom: 4),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: containerBG,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Icon(
          icon,
          color: fontColor,
          size: 25,
        ),
      ),
      SizedBox(height: 2.0),
      Text(
        name,
        style: TextStyle(fontSize: 10, color: fontColor),
      ),
    ],
  );
}
