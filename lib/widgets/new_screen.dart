/*
// second_screen.dart
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Text('This is the second screen!'),
      ),
    );
  }
}
*//*


import 'package:flutter/material.dart';
import '../constants/colors.dart'; // Ensure you have your color constants defined

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final dialogWidth = screenSize.width;
    final dialogHeight = screenSize.height * 0.8;

    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 60), // Space for footer
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildImageSection(dialogWidth,dialogHeight),
                const SizedBox(height: 16.0),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'This is the second screen! Here you can provide more details about the content.',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildImageSection(double screenWidth ,double screenHeight) {
    return Center(
      child: Image.asset(
        "assets/projects/Job_desc_resume_matcher.png", // Replace with your image asset
        width: screenWidth,
        height: screenHeight * 0.6,
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300], // Placeholder color
            child: const Center(child: Text('Image not found')),
          );
        },
      ),
    );
  }

  Widget _buildFooter() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          color: CustomColor.bgLight1,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Available on",
              style: TextStyle(
                color: CustomColor.yellowsecondary,
                fontSize: 10.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Image.asset(
                "assets/web_icon.png",
                width: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';
import 'package:porfoliojob/constants/sns_links.dart';
import '../constants/colors.dart'; // Ensure you have your color constants defined
import 'dart:js' as js;

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColor.bgLight2,
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: CustomColor.bgLight2,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 60), // Space for footer
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImageSection(screenSize.width, screenSize.height),
                  const SizedBox(height: 16.0),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'This is the second screen! Here you can provide more details about the content.\n \n \n \n \n \n finally.',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildImageSection(double screenWidth, double screenHeight) {
    return Center(
      child: Image.asset(
        "assets/projects/Job_desc_resume_matcher.png", // Replace with your image asset
        width: screenWidth,
        height: screenHeight * 0.6,
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300], // Placeholder color
            child: const Center(child: Text('Image not found')),
          );
        },
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
        color: CustomColor.bgLight1,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Available on",
            style: TextStyle(
              color: CustomColor.yellowsecondary,
              fontSize: 10.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: InkWell(onTap: () {js.context.callMethod('open', [SnsLinks.devpost]);},
              child: Image.asset(
                "assets/web_icon.png",
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'dart:js' as js;
import 'package:porfoliojob/utils/project_utils.dart'; // Import your ProjectUtils class

class SecondScreen extends StatelessWidget {
  final ProjectUtils project; // Add this line to accept ProjectUtils

  const SecondScreen({super.key, required this.project}); // Update constructor

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColor.bgLight2,
      appBar: AppBar(
        title: Text(project.title),
        backgroundColor: CustomColor.bgLight2,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 60), // Space for footer
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImageSection(screenSize.width, screenSize.height),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      project.fullcontent, // Use the full content from the project
                      style: const TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildImageSection(double screenWidth, double screenHeight) {
    return Center(
      child: Image.asset(
        project.image, // Use the image from the project
        width: screenWidth,
        height: screenHeight * 0.6,
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300], // Placeholder color
            child: const Center(child: Text('Image not found')),
          );
        },
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
        color: CustomColor.bgLight1,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            project.displayFooter,
            style: const TextStyle(
              color: CustomColor.yellowsecondary,
              fontSize: 10.0,
            ),
          ),
          const Spacer(),
          if (project.webLink!=null)
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: InkWell(
                onTap: () {
                  js.context.callMethod('open', [project.webLink]);
                },
                child: Image.asset(
                  "assets/web_icon.png",
                  width: 20,
                ),
              ),
            ),
          if (project.pypiLink!=null)
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: InkWell(
                onTap: () {
                  js.context.callMethod('open', [project.pypiLink]);
                },
                child: Image.asset(
                  "assets/PythonLogo.webp",
                  width: 20,
                ),
              ),
            ),
          if(project.gitLink!=null)
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: InkWell(
                onTap: () {
                  js.context.callMethod('open', [project.gitLink]);
                },
                child: Image.asset(
                  "assets/github.png",
                  width: 20,
                ),
              ),
            ),
          if(project.verifierLink!=null)
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: InkWell(
                onTap: () {
                  js.context.callMethod('open', [project.verifierLink]);
                },
                child: Image.asset(
                  "assets/verified.jpg",
                  width: 20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}



