import 'package:flutter/material.dart';
import 'package:porfoliojob/constants/size.dart';
import 'package:porfoliojob/utils/project_utils.dart';
import 'package:porfoliojob/widgets/custom_popup.dart';
import 'package:porfoliojob/widgets/new_screen.dart';

import '../constants/colors.dart';
//import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
  super.key,
  required this.projects
  });
  final ProjectUtils projects;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    //print(screenSize);
    return InkWell(
        borderRadius: BorderRadius.circular(10.0),
      onTap: () {
        //js.context.callMethod("open",[projects.webLink]);
        /*showDialog(builder: (context) => Dialog(
              insetPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),

        ),
        child: Container(
          width: 1000.0,
          height: 500.0,
          child:  Padding(
            padding: EdgeInsets.all(8.0),
            child: Stack(
              children: [ const Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  //SizedBox(height: 12.0,),
                  Text("data",style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
          ),
                Positioned(
                  top: 10,
                  left: 8,child: Text("Title" , style: TextStyle(fontSize: 25.0),),),
                Positioned(top: 8,
                right: 8, child: IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.close),iconSize: 15.0,),
                ),
            ],),
          ),
        ),
        ), context: context,
            barrierDismissible: false,
        );*/
        //print(screenSize.width);
        if (screenSize.width>=kMinDesktopWidth) {
          PopUpWindow.show(context,projects);
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen(project: projects)),
          );
        }
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 280,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CustomColor.bgLight2
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              projects.image,
              height: 140,width: 250,fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12,15,12,12),
              child: Text(projects.title,style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
              ),
            ),
            //subtitle
            Padding(
              padding: const EdgeInsets.fromLTRB(12,0,12,12),
              child: Text(projects.subtitle,style: const TextStyle(
                fontSize: 10,
                color: CustomColor.whilteSecondary,
              ),
              ),
            ),
            const Spacer(),
            //footer
            Container(
              color: CustomColor.bgLight1,
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              child: Row(children: [
                 Text(projects.displayFooter,style: const TextStyle(
                  color: CustomColor.yellowsecondary,
                  fontSize: 10.0,
                ),
                ),
                const Spacer(),
                if(projects.webLink!=null)
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Image.asset("assets/web_icon.png",
                    width: 19,
                  ),
                ),
                if(projects.pypiLink!=null)
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Image.asset("assets/PythonLogo.webp",
                    width: 19,
                  ),
                ),
                if(projects.gitLink!=null)
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Image.asset("assets/github.png",
                    width: 19,
                  ),
                ),
                if(projects.verifierLink!=null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Image.asset("assets/verified.jpg",
                      width: 19,
                    ),
                  ),
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

