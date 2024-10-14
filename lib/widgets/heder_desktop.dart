import 'package:flutter/material.dart';
import 'package:porfoliojob/constants/colors.dart';
import 'package:porfoliojob/constants/nav_items.dart';
import 'package:porfoliojob/styles/style.dart';
import 'package:porfoliojob/widgets/site_logo.dart';
class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap,});
  final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return           Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0,),
      width: double.maxFinite,
      decoration: kheaderdecoration,
      child: Row(
        children: [
          SiteLogo(onTap: () {},
          ),
          const Spacer(),
          for (int i =0; i<navtitles.length; i++)
            Padding(padding: const EdgeInsets.only(right: 20,),
                child:    TextButton(
                  onPressed: () {onNavMenuTap(i);},
                  child: Text(navtitles[i],style: const TextStyle(
                    fontSize:  16,
                    fontWeight: FontWeight.w500,
                    color:  CustomColor.whitePrimary,
                  ),
                  ),
                )
            ),
        ],
      ),
    );

  }
}
