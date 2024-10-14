import 'package:flutter/material.dart';
import 'package:porfoliojob/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,this.onTap,});

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text("SM",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowsecondary,
        ),
      ),
    );
  }
}
