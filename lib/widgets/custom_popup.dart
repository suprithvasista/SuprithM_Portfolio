/*
import 'package:flutter/material.dart';
import 'package:porfoliojob/constants/sns_links.dart';
import '../constants/colors.dart';
import 'dart:js' as js;

class PopUpWindow {
  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        final screenSize = MediaQuery.of(context).size;
        final dialogWidth = screenSize.width * 0.7;
        final dialogHeight = screenSize.height * 0.8;

        return Dialog(
          backgroundColor: CustomColor.bgLight2,
          insetPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: SizedBox(
            width: dialogWidth,
            height: dialogHeight,
            child: Stack(
              children: [
                _buildDialogContent(dialogWidth, dialogHeight),
                _buildDialogTitle(),
                _buildCloseButton(context),
                _buildFooter(),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget _buildDialogContent(double dialogWidth, double dialogHeight) {
    return Positioned.fill(
      top: 50.0,
      bottom: 20.0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/projects/Job_desc_resume_matcher.png",
              width: dialogWidth,
              height: dialogHeight * 0.6,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300], // Placeholder color
                  child: const Center(child: Text('Image not found')),
                );
              },
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'This is a description of the content in the pop-up window. It should provide detailed information related to the image above.',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  static Positioned _buildDialogTitle() {
    return const Positioned(
      top: 8,
      left: 8,
      child: Text(
        "Title",
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Positioned _buildCloseButton(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.close),
        iconSize: 20.0,
      ),
    );
  }

  static Positioned _buildFooter() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          color: CustomColor.bgLight1,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          children: [
            const Text(
              "Available on",
              style: TextStyle(
                color: CustomColor.yellowsecondary,
                fontSize: 10.0,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: InkWell( onTap: () {js.context.callMethod('open', [SnsLinks.devpost]);},
                child: Image.asset(
                  "assets/web_icon.png",
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/


import 'package:flutter/material.dart';
import 'package:porfoliojob/utils/project_utils.dart';
import '../constants/colors.dart';
import 'dart:js' as js;

class PopUpWindow {
  static Future<void> show(BuildContext context, ProjectUtils project) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        final screenSize = MediaQuery.of(context).size;
        final dialogWidth = screenSize.width * 0.7;
        final dialogHeight = screenSize.height * 0.8;

        return Dialog(
          backgroundColor: CustomColor.bgLight2,
          insetPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: SizedBox(
            width: dialogWidth,
            height: dialogHeight,
            child: Stack(
              children: [
                _buildDialogContent(dialogWidth, dialogHeight, project),
                _buildDialogTitle(project.title),
                _buildCloseButton(context),
                _buildFooter(project),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget _buildDialogContent(double dialogWidth, double dialogHeight, ProjectUtils project) {
    return Positioned.fill(
      top: 50.0,
      bottom: 20.0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              project.image,
              width: dialogWidth,
              height: dialogHeight * 0.6,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300], // Placeholder color
                  child: const Center(child: Text('Image not found')),
                );
              },
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                project.fullcontent, // Use the description from the project
                style: const TextStyle(fontSize: 16.0),
                textAlign: TextAlign.justify,
                //Did this change to avoid the overflow of project contents
                //overflow: TextOverflow.ellipsis,
                //maxLines: 5,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  static Positioned _buildDialogTitle(String title) {
    return Positioned(
      top: 8,
      left: 8,
      child: Text(
        title, // Use the title from the project
        style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Positioned _buildCloseButton(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.close),
        iconSize: 20.0,
      ),
    );
  }

  static Positioned _buildFooter(ProjectUtils project) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          color: CustomColor.bgLight1,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
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
      ),
    );
  }
}
