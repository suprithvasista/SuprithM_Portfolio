import 'package:flutter/material.dart';
import 'package:porfoliojob/constants/skills_item.dart';

import '../constants/colors.dart';

class skillsMobile extends StatelessWidget {
  const skillsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                     ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        children: [
          //Platforms
          for(int i =0; i<platformItems.length;i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: const
                EdgeInsets.symmetric
                  (vertical: 10.0,
                    horizontal: 20.0),
                leading: Image.asset(platformItems[i]["img"],width: 26.0),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          const SizedBox(height: 50.0),
          //Skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for(int i =0; i<skillItem.length; i++)
                Chip
                  (
                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                  backgroundColor: CustomColor.bgLight2,
                  label:Text(skillItem[i]["title"]),
                  avatar: Image.asset(skillItem[i]["img"]),
                ),
            ],
          )
        ],
      ),
    );
  }
}
