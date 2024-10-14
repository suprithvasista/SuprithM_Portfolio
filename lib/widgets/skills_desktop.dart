import 'package:flutter/material.dart';
import 'package:porfoliojob/constants/skills_item.dart';

import '../constants/colors.dart';

class skillsdesktop extends StatelessWidget {
  const skillsdesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //platform
        ConstrainedBox(
          constraints: const BoxConstraints(
              maxWidth:450),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for(int i=0; i<platformItems.length; i++)
                Container(
                  width:  220,
                  height: 75,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius:  BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    leading: Image.asset(platformItems[i]["img"]
                      ,width: 26.0,),
                    title: Text(platformItems[i]["title"],
                    ),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(width: 50,),

        //skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10.0,runSpacing: 10.0,
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
            ),
          ),
        )
      ],
    );
  }
}
