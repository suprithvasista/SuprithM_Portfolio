import 'package:flutter/material.dart';
import 'package:porfoliojob/styles/style.dart';
import 'package:porfoliojob/widgets/site_logo.dart';

class HeaderModbile extends StatelessWidget {
  const HeaderModbile({super.key, this.onLogotap, this.onMenutap});
  final VoidCallback? onLogotap;
  final VoidCallback? onMenutap;
  @override
  Widget build(BuildContext context) {
    return          Container(
        height: 50.0,
        margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
        decoration: kheaderdecoration,
        child: Row(
          children: [
            SiteLogo(onTap: onLogotap,
            ),
            const Spacer(),
            IconButton(onPressed:onMenutap,
                icon: const Icon(Icons.menu)
            ),
            const SizedBox(width: 15,),
          ],

        )
    );
  }
}
