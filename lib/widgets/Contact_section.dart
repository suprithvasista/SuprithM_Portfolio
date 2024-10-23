import 'package:flutter/material.dart';
import 'dart:js' as js;

import '../constants/colors.dart';
import '../constants/sns_links.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Uri emailLauchUri =Uri(
      scheme: 'mailto',
      path: SnsLinks.gmail,
    );
    return Container(
      height: 100, // Adjust height as necessary
      width: double.maxFinite,
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Header
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Social Media Links',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          // Social Media Icons
          Wrap(
            spacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  if (await canLaunchUrl(emailLauchUri) ){
                    await launchUrl(emailLauchUri);
                  } else {
                    throw 'Could not launch mail  app.';
                  }
                },
                child: Image.asset(
                  "assets/mail.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  "assets/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedin]);
                },
                child: Image.asset(
                  "assets/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.devpost]);
                },
                child: Image.asset(
                  "assets/devpost_logo_icon_169279.webp",
                  width: 28,
                ),
              ),
              // Add more InkWell widgets for other social media links if needed
            ],
          ),
        ],
      ),
    );
  }
}
