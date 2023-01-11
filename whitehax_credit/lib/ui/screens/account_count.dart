import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../black_text_body.dart';
import '../../black_text_body_small.dart';
import '../../controller/home_controller.dart';

class AccountCount extends StatefulWidget {
  const AccountCount({super.key});

  @override
  State<AccountCount> createState() => _AccountCountState();
}

class _AccountCountState extends State<AccountCount> {
  final HomeController _homeController = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeController.displayCreditScore();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: otherCreditItem(),
      ),
    );
  }

  Column otherCreditItem() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBody(data: "Account Count"),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
        //   child: Text(
        //       "Your Credit report includes information about instances of non-account items that may affect your credit score and rating.\nThe below info is summary of non-account related items of your report "),
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Installment Accounts"),
              BlackTextBodySmall(
                  data:
                      " : ${_homeController.providerViews.first.summary.installmentAccounts.totalAccounts}  Found"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Mortgage Accounts"),
              BlackTextBodySmall(
                  data:
                      " : ${_homeController.providerViews.first.summary.mortgageAccounts.totalAccounts} Found"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Other Accounts"),
              BlackTextBodySmall(
                  data:
                      " : ${_homeController.providerViews.first.summary.otherAccounts.totalAccounts} Found"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Total Accounts"),
              BlackTextBodySmall(
                  data:
                      " :  ${_homeController.providerViews.first.summary.totalOpenAccounts.totalAccountsWithBalance} Found"),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        //   child: Row(
        //     children: [
        //       BlackTextBodySmall(data: "Public Records"),
        //       BlackTextBodySmall(
        //           data:
        //               " : ${_homeController.providerViews.first.summary.totalPublicRecords} Records Found"),
        //     ],
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        //   child: Row(
        //     children: [
        //       BlackTextBodySmall(data: "Collections"),
        //       BlackTextBodySmall(
        //           data:
        //               " : ${_homeController.providerViews.first.summary.totalCollections} Collections Found"),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
