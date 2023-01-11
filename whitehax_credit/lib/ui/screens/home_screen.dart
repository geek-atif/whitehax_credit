import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:whitehax_credit/ui/styles/my_app_theme.dart';
import '../../black_text_body.dart';
import '../../black_text_body_med.dart';
import '../../black_text_body_small.dart';
import '../../controller/home_controller.dart';
import '../../green_text_body_small.dart';
import '../../pink_text_body.dart';
import 'my_navigation_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SliderDrawerState> keyLoader = GlobalKey<SliderDrawerState>();
  final HomeController _homeController = Get.put(HomeController());
  late List<ChartData> gameScoreChart = List.empty(growable: true);
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeController.displayCreditScore();
    loadGameScore();
  }

  void loadGameScore() {
    gameScoreChart.add(ChartData("Game", 800, Colors.green));
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyAppTheme.whitehaxBackgroundColor,
        body: SliderDrawer(
          appBar: const SliderAppBar(
            appBarColor: MyAppTheme.whitehaxBackgroundColor,
            title: BlackTextBody(
              data: "Score - Equifar",
            ),
            drawerIconColor: Colors.white,
            appBarPadding: EdgeInsets.all(4),
            appBarHeight: 65,
          ),
          key: keyLoader,
          slider: const MyNavigationMenu(),
          child: SingleChildScrollView(
            child: homeWidget(screenSize),
          ),
          splashColor: MyAppTheme.whitehaxBackgroundColor,
        ),
      ),
    );
  }

  Container homeWidget(Size screenSize) {
    return Container(
      color: MyAppTheme.whitehaxBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => _homeController.isLoading.value
              ? Text(
                  "Loading",
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    displayGraphScore("", gameScoreChart,
                        _homeController.score.value.toDouble()),

//                     ExpansionTileCard(
//                       baseColor: MyAppTheme.whitehaxBackgroundColor,
//                       shadowColor: MyAppTheme.whitehaxBackgroundColor,
//                       expandedColor: MyAppTheme.whitehaxBackgroundColor,
//                       key: cardA,
//                       title: Text(""),
//                       leading: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             BlackTextBodyMed(data: "Your Loan Risk : "),
//                             GreenTextBodySmall(data: "Very Low Risk")
//                           ],
//                         ),
//                       ),
//                       children: <Widget>[
//                         Divider(
//                           thickness: 1.0,
//                           height: 1.0,
//                         ),
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 16.0,
//                               vertical: 8.0,
//                             ),
//                             child: Text(
//                               """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

// Use me any time you think your app could benefit from being just a bit more Material.

// These buttons control the next card down!""",
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .bodyText2!
//                                   .copyWith(fontSize: 16),
//                             ),
//                           ),
//                         ),
//                         ButtonBar(
//                           alignment: MainAxisAlignment.spaceAround,
//                           buttonHeight: 52.0,
//                           buttonMinWidth: 90.0,
//                           children: <Widget>[],
//                         ),
//                       ],
//                     ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BlackTextBodyMed(data: "Your Loan Risk : "),
                            GreenTextBodySmall(data: "Very Low Risk"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Colors.white54,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 2),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white54,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      height: screenSize.height * 0.14,
                      width: screenSize.width * 1,
                      child: customerDetails(),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 1,
                      child: employmentHistory(),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.4,
                      child: creditAccount(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // SizedBox(
                    //   height: screenSize.height * 0.4,
                    //   child: otherCreditItem(),
                    // ),
                  ],
                ),
        ),
      ),
    );
  }

  Column otherCreditItem() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBody(data: "Other Credit Item"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: Text(
              "Your Credit report includes information about instances of non-account items that may affect your credit score and rating.\nThe below info is summary of non-account related items of your report "),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Negative Accounts"),
              BlackTextBodySmall(
                  data:
                      " : ${_homeController.providerViews.first.summary.totalNegativeAccounts}  Found"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Consumer Statements"),
              BlackTextBodySmall(
                  data:
                      " : ${_homeController.providerViews.first.summary.totalConsumerStatements} Statment Found"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Personal Information"),
              BlackTextBodySmall(
                  data:
                      " : ${_homeController.providerViews.first.summary.totalPersonalInformation} Item Found"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Inquiries"),
              BlackTextBodySmall(
                  data:
                      " :  ${_homeController.providerViews.first.summary.totalInquires} Inquiries Found"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Public Records"),
              BlackTextBodySmall(
                  data:
                      " : ${_homeController.providerViews.first.summary.totalPublicRecords} Records Found"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            children: [
              BlackTextBodySmall(data: "Collections"),
              BlackTextBodySmall(
                  data:
                      " : ${_homeController.providerViews.first.summary.totalCollections} Collections Found"),
            ],
          ),
        ),
      ],
    );
  }

  Column employmentHistory() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBody(data: "Employment History"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBodySmall(
              data:
                  "Employer Name : ${_homeController.providerViews.first.summary.subject.employmentHistory.first.employerName}"),
        ),
      ],
    );
  }

  Column customerDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBody(data: "Current Details"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBodySmall(
              data:
                  "Name : ${_homeController.providerViews.first.summary.subject.currentName.firstName} ${_homeController.providerViews.first.summary.subject.currentName.lastName}"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBodySmall(
              data:
                  "Address : ${_homeController.providerViews.first.summary.subject.currentAddress.line1} ${_homeController.providerViews.first.summary.subject.currentAddress.line3} , ${_homeController.providerViews.first.summary.subject.currentAddress.country.code}"),
        ),
      ],
    );
  }

  Column creditAccount() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBody(data: "Accounts Details"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: Text(
              "Your Credit report includes information about your activity on your credit account that affects your credit score and rating.\nThe Table below is an overview of your current account and status."),
        ),
        tableHead(),
        tableBody(
            "ReWorking",
            _homeController
                .providerViews.first.summary.revolvingAccounts.balance.amount,
            _homeController.providerViews.first.summary.revolvingAccounts
                .monthlyPaymentAmount.amount),
        tableBody(
            "Mortgage",
            _homeController
                .providerViews.first.summary.mortgageAccounts.balance.amount,
            _homeController.providerViews.first.summary.mortgageAccounts
                .monthlyPaymentAmount.amount),
        tableBody(
            "Installment",
            _homeController
                .providerViews.first.summary.installmentAccounts.balance.amount,
            _homeController.providerViews.first.summary.installmentAccounts
                .monthlyPaymentAmount.amount),
        tableBody(
            "Other",
            _homeController
                .providerViews.first.summary.mortgageAccounts.balance.amount,
            _homeController.providerViews.first.summary.mortgageAccounts
                .monthlyPaymentAmount.amount),
      ],
    );
  }

  Padding tableBody(
    String first,
    double second,
    double three,
  ) {
    print("tableBody()  first $first second : $second , three : $three");
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Table(
        border: TableBorder.symmetric(
          outside: const BorderSide(width: 1, color: Colors.black),
        ),
        children: [
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlackTextBodySmall(
                data: first,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: BlackTextBodySmall(data: "$second")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: BlackTextBodySmall(data: "$three")),
            ),
          ]),
        ],
      ),
    );
  }

  SizedBox displayGraphScore(
      String title, List<ChartData> totalScore, double maxValue) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: SfCircularChart(
        annotations: <CircularChartAnnotation>[
          CircularChartAnnotation(
            widget: BlackTextBody(
              data: "${maxValue.abs().toInt()} Score",
            ),
          ),
        ],
        series: <CircularSeries>[
          // Renders radial bar chart
          RadialBarSeries<ChartData, String>(
              trackColor: Colors.green,
              strokeColor: Colors.green,
              dataSource: totalScore,
              sortingOrder: SortingOrder.ascending,
              useSeriesColor: true,
              trackOpacity: 0.3,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => maxValue,
              radius: '80%',
              innerRadius: '80%',
              cornerStyle: CornerStyle.endCurve,
              gap: '3%',
              maximumValue: 1000,
              pointColorMapper: (ChartData data, _) => data.color,
              // dataLabelSettings: const DataLabelSettings(
              //     // Renders the data label
              //     isVisible: true),
              animationDelay: 2.0,
              strokeWidth: 0.2,
              trackBorderWidth: 1.0),
        ],
      ),
    );
  }

  Padding tableHead() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Table(
        border: TableBorder.symmetric(
          inside: const BorderSide(width: 1, color: Colors.black),
          outside: const BorderSide(width: 1, color: Colors.black),
        ),
        children: const [
          TableRow(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BlackTextBodySmall(
                data: "Accounts",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BlackTextBodySmall(data: "Open Bal"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BlackTextBodySmall(data: "Close Bal"),
            ),
          ]),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
