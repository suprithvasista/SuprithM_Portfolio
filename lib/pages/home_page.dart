

// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:porfoliojob/constants/colors.dart';
import 'package:porfoliojob/widgets/Contact_section.dart';
import 'package:porfoliojob/widgets/drawer_mobile.dart';
import 'package:porfoliojob/widgets/header_mobile.dart';
import 'package:porfoliojob/widgets/heder_desktop.dart';
import 'package:porfoliojob/widgets/main_desktop.dart';
import 'package:porfoliojob/widgets/mian_mobile.dart';
import 'package:porfoliojob/widgets/projects_section.dart';
import 'package:porfoliojob/widgets/skills_desktop.dart';

import '../constants/size.dart';
import '../widgets/footer.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffolKey=GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarkeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    //print(screenSize);
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffolKey,
          backgroundColor: CustomColor.scaffloldBg,
          endDrawer:constraints.maxWidth>=kMinDesktopWidth ? null: DrawerModbile(onNavItemTap:(int navIndex){
            //call func
            scaffolKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          }),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarkeys.first),
                // Main
                if(constraints.maxWidth>=kMinDesktopWidth)
                  HeaderDesktop(onNavMenuTap: (int navIndex) {
                    //call func
                    scrollToSection(navIndex);
                  },)
                else
                  HeaderModbile(
                    onLogotap: () {},
                    onMenutap: () {scaffolKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constraints.maxWidth>=kMinDesktopWidth)
                  // ignore: avoid_types_as_parameter_names
                  MainDesktop(onNavItemTapSocial: (int myInt) {
                  scrollToSection(3);
                  },)
                else
                  MainMobile(onNavItemTapSocialMobile: (int myInt) {
                    scrollToSection(3);
                  },),
                // Skills
                Container(
                  key: navbarkeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25,20,25,60),
                  color: CustomColor.bgLight1,
                  child:  Column(
                    mainAxisSize: MainAxisSize.min,
                    //Title
                    children: [
                      const Text("What I can do",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color:  CustomColor.whitePrimary,
                      ),
                      ),
                      const SizedBox(height: 50,),
                      //Platforms and skills
                      if(constraints.maxWidth>=kMeddesktopWidth)
                        const skillsdesktop()
                      else
                        const skillsMobile(),
                    ],
                  ),
                ),
                //projects
                const SizedBox(height: 30,),
                ProjectsSection( key: navbarkeys[2],),
                // contact
                const SizedBox(height: 30,),
                ContactSection(key: navbarkeys[3]),
                const SizedBox(height: 30,),
                // Footer
                const Footer(),
              ],
            ),
          )
        );
      }
    );
  }
  void scrollToSection(int navIndex){
    if (navIndex==4){
      return;
    }
    final key=navbarkeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,duration: const Duration(milliseconds: 500),curve: Curves.easeInOut,
    );
  }
}

