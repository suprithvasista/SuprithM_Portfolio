/*
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key, required this.onNavItemTapSocialMobile});
  final Function(int) onNavItemTapSocialMobile;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return
      Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0,
          vertical: 30.0
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // avatar image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffloldBg.withOpacity(0.6),
                CustomColor.scaffloldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset("assets/Photo.jpeg",
              width: screenWidth/2,
            ),
          ),
          const SizedBox(height: 30.0),
          const Align(
            alignment: Alignment.topLeft,
            child: Text("Hi,\nI'm Suprith M\nAKA Data Engineer",
              style: TextStyle(
                fontSize: 24.0,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          const SizedBox(height: 15,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 180.0,
              child: ElevatedButton(
                onPressed: (){
                  onNavItemTapSocialMobile(3);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(20.0),
                  ),
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                child: const Text("Get in touch"),

              ),
            ),
          ) //avatar intro
        ],
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'dart:html' as html; // Import for web downloads
import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key, required this.onNavItemTapSocialMobile});
  final Function(int) onNavItemTapSocialMobile;

  // Function to download PDF from the local files in the web directory
  void downloadPDF() {
    const url = 'https://suprithm.vasistatech.in/assets/public/suprith_m_resume.pdf'; // The relative path to your PDF in the web directory
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'suprith_m_resume.pdf') // Name of the downloaded file
      ..click();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffloldBg.withOpacity(0.6),
                CustomColor.scaffloldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/Photo.jpeg",
              width: screenWidth / 2,
            ),
          ),
          const SizedBox(height: 30.0),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Hi,\nI'm Suprith M\nAKA Data Engineer",
              style: TextStyle(
                fontSize: 24.0,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 180.0,
              child: ElevatedButton(
                onPressed: () {
                  onNavItemTapSocialMobile(3);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                child: const Text("Get in touch" ,style: TextStyle(color: CustomColor.whitePrimary),),
              ),
            ),
          ),
          const SizedBox(height: 15), // Add some spacing
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 180.0,
              child: ElevatedButton(
                onPressed: downloadPDF, // Call the download function
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                child: const Text("Download Resume",style: TextStyle(color: CustomColor.whitePrimary),),
              ),
            ),
          ), // Download PDF button
        ],
      ),
    );
  }
}
