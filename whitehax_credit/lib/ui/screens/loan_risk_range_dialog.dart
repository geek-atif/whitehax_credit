import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whitehax_credit/black_text_body_med.dart';
import 'package:whitehax_credit/controller/home_controller.dart';
import 'package:whitehax_credit/green_text_body_small.dart';
import '../../../../ui/routers/my_router.dart';
import '../../black_text_body.dart';
import '../../black_text_body_small.dart';
import '../red_text_body_small.dart';
import '../styles/my_app_theme.dart';
import '../yellow_text_body copy.dart';

class LoanRiskRangeDialog {
  static Future<void> showLoadingDialog(
    BuildContext context,
    GlobalKey key,
    HomeController homeController,
  ) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => true,
            child: SimpleDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              key: key,
              //backgroundColor: Colors.transparent,
              backgroundColor: MyAppTheme.whitehaxdialog,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlackTextBody(
                    data: "Loan Risk Range Details",
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Table(
                    border: TableBorder.symmetric(
                      inside: const BorderSide(width: 1, color: Colors.white),
                      outside: const BorderSide(width: 1, color: Colors.white),
                    ),
                    children: const [
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: BlackTextBodyMed(
                            data: "Risk Ranges",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: BlackTextBodyMed(data: "Remark"),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Table(
                    border: TableBorder.symmetric(
                      outside: const BorderSide(width: 1, color: Colors.white),
                    ),
                    children: const [
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: RedTextBodySmall(data: "300-500")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                              child: RedTextBodySmall(data: "Very High Risk")),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Table(
                    border: TableBorder.symmetric(
                      outside: const BorderSide(width: 1, color: Colors.white),
                    ),
                    children: const [
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: RedTextBodySmall(data: "600-660")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                              child: RedTextBodySmall(data: "High Risk")),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Table(
                    border: TableBorder.symmetric(
                      outside: const BorderSide(width: 1, color: Colors.white),
                    ),
                    children: const [
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: YellowTextBody(data: "661-715")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                              child: YellowTextBody(data: "Medium Risk")),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Table(
                    border: TableBorder.symmetric(
                      outside: const BorderSide(width: 1, color: Colors.white),
                    ),
                    children: const [
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: YellowTextBody(data: "716-747")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                              Center(child: YellowTextBody(data: "Low Risk")),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Table(
                    border: TableBorder.symmetric(
                      outside: const BorderSide(width: 1, color: Colors.white),
                    ),
                    children: const [
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: GreenTextBodySmall(data: "748-850")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                              child: GreenTextBodySmall(data: "Very Low Risk")),
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  Padding tableHead() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Table(
        border: TableBorder.symmetric(
          inside: const BorderSide(width: 1, color: Colors.white),
          outside: const BorderSide(width: 1, color: Colors.white),
        ),
        children: const [
          TableRow(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BlackTextBodyMed(
                data: "Risk Ranges",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BlackTextBodyMed(data: "Remark"),
            ),
          ]),
        ],
      ),
    );
  }
}
