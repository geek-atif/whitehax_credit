import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whitehax_credit/black_text_body.dart';
import 'package:whitehax_credit/ui/routers/my_router.dart';

class MyNavigationMenu extends StatelessWidget {
  const MyNavigationMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 25),
        child: Column(
          children: <Widget>[
//            _head(screenSize),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            InkWell(
              onTap: () => Get.toNamed(MyRouter.homeScreen),
              child: home(),
            ),
            InkWell(
                onTap: () => Get.toNamed(MyRouter.accountCount),
                child: accounts()),
          ],
        ),
      ),
    );
  }

  ExpansionTile home() {
    return ExpansionTile(
      collapsedIconColor: Colors.white,
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      childrenPadding: const EdgeInsets.only(bottom: 10),
      title: const BlackTextBody(
        data: "Home",
      ),
    );
  }

  ExpansionTile accounts() {
    return ExpansionTile(
        collapsedIconColor: Colors.white,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        childrenPadding: const EdgeInsets.only(bottom: 10),
        title: const BlackTextBody(
          data: "Accounts",
        ),
        children: <Widget>[
          InkWell(
            onTap: () => Get.toNamed(MyRouter.accountCount),
            child: const BlackTextBody(data: "accounts"),
          ),
        ]);
  }
}
