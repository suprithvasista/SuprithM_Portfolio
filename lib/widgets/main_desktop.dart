/*
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key, required this.onNavItemTapSocial});
  final Function(int) onNavItemTapSocial;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    //print(screenSize);
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return               Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0,),
      height: screenHeight/1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hi,\nI'm Suprith M\nAKA Data Engineer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15,
              ),
              SizedBox(
                  width: 250,
                child: ElevatedButton(
                  onPressed: (){
                    onNavItemTapSocial(3);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10.0),
                    ),
                    backgroundColor: CustomColor.yellowPrimary,
                  ),
                  child: const Text("Get in touch"),

                ),
              )
            ],
          ),
          Image.asset(
            "assets/Photo.jpeg",
            width: screenWidth/4,
          ),
        ],
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'dart:html' as html; // Import for web downloads
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key, required this.onNavItemTapSocial});
  final Function(int) onNavItemTapSocial;

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
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI'm Suprith M\nAKA Senior Data Engineer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    onNavItemTapSocial(3);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: CustomColor.yellowPrimary,
                  ),
                  child: const Text("Get in touch",style: TextStyle(color: CustomColor.whitePrimary),),
                ),
              ),
              const SizedBox(height: 15), // Add spacing between buttons
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: downloadPDF, // Call the download function
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: CustomColor.yellowPrimary,
                  ),
                  child: const Text("Download Resume",style: TextStyle(color: CustomColor.whitePrimary),),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/Photo.jpeg",
            width: screenWidth / 4,
          ),
        ],
      ),
    );
  }
}
