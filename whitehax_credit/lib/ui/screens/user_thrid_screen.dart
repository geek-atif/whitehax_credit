import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:whitehax_credit/ui/routers/my_router.dart';
import 'package:whitehax_credit/ui/styles/my_app_theme.dart';
import '../../black_text_body.dart';
import '../../black_text_body_med.dart';
import '../../black_text_body_small.dart';
import '../../controller/home_controller.dart';
import '../../green_text_body_small.dart';
import '../../pink_text_body.dart';
import '../red_text_body.dart';
import '../red_text_body_small.dart';
import '../widgets/dark_blue_button.dart';
import 'loan_risk_range_dialog.dart';
import 'my_navigation_menu.dart';

class UserThridScreen extends StatefulWidget {
  const UserThridScreen({super.key});

  @override
  State<UserThridScreen> createState() => _UserThridScreenState();
}

class _UserThridScreenState extends State<UserThridScreen> {
  final GlobalKey<SliderDrawerState> keyLoader = GlobalKey<SliderDrawerState>();
  final HomeController _homeController = Get.put(HomeController());
  late List<ChartData> gameScoreChart = List.empty(growable: true);
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();

  final GlobalKey<State> keyLoader_ = GlobalKey<State>();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // displayGraphScore("", gameScoreChart,
            //     _homeController.score.value.toDouble()),
            _getRadialGauge(),

            loanRisk(),
            const SizedBox(
              height: 20,
            ),
            currentDetail(screenSize),
            // SizedBox(
            //   height: screenSize.height * 0.1,
            //   width: screenSize.width * 1,
            //   child: employmentHistory(),
            // ),
            const SizedBox(
              height: 20,
            ),
            thridAccount(screenSize),
            // SizedBox(
            //   height: screenSize.height * 0.4,
            //   child: creditAccount(),
            // ),
            // const SizedBox(
            //   height: 5,
            // ),
            // SizedBox(
            //   height: screenSize.height * 0.4,
            //   child: otherCreditItem(),
            // ),
          ],
        ),
      ),
    );
  }

  SizedBox thridAccount(Size screenSize) {
    return SizedBox(
      height: screenSize.height * 0.125,
      //width: screenSize.width * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: screenSize.width * 0.35,
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white54,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                BlackTextBodySmall(data: "Total Open Accounts"),
                BlackTextBody(data: "1")
                //_homeController.providerViews.first.summary.totalOpenAccounts.totalAccounts
              ],
            ),
          ),
          Container(
            width: screenSize.width * 0.35,
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const RedTextBodySmall(data: "Total Negative Accounts"),
                RedTextBody(data: "15"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15.0,
                      ),
                      child: InkWell(
                        onTap: () =>
                            Get.toNamed(MyRouter.negativeAccountScreen),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container currentDetail(Size screenSize) {
    return Container(
      padding: EdgeInsets.only(top: 2),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white54,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      height: screenSize.height * 0.14,
      width: screenSize.width * 1,
      child: customerDetails(),
    );
  }

  Container loanRisk() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      padding: const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BlackTextBodyMed(data: "Your Loan Risk : "),
          Text(
            "Very High Risk",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontStyle: FontStyle.normal, fontSize: 16, color: Colors.red),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () => LoanRiskRangeDialog.showLoadingDialog(
                context, keyLoader_, _homeController),
            child: Icon(
              Icons.info_outline,
              color: Colors.white54,
            ),
          )
        ],
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
        const Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
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
        const Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBody(data: "Current Details"),
        ),
        //${_homeController.providerViews.first.summary.subject.currentName.firstName} ${_homeController.providerViews.first.summary.subject.currentName.lastName}
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBodySmall(data: "Name : Dave Dan"),
        ),
        //${_homeController.providerViews.first.summary.subject.currentAddress.line1} ${_homeController.providerViews.first.summary.subject.currentAddress.line3} , ${_homeController.providerViews.first.summary.subject.currentAddress.country.code}
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
          child: BlackTextBodySmall(
              data: "Address : 109 NERIEQAR DR CAEQRCLEVILE"),
        ),
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

  Widget _getRadialGauge() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: SfRadialGauge(
          title: const GaugeTitle(
              text: '',
              textStyle: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          axes: <RadialAxis>[
            RadialAxis(
                useRangeColorForAxis: true,
                minimum: 300,
                maximum: 1000,
                ranges: <GaugeRange>[
                  GaugeRange(
                      startValue: 300,
                      endValue: 660,
                      color: Colors.red,
                      startWidth: 10,
                      endWidth: 10),
                  GaugeRange(
                      labelStyle: GaugeTextStyle(color: Colors.white),
                      startValue: 661,
                      endValue: 747,
                      color: Colors.orange,
                      startWidth: 10,
                      endWidth: 10),
                  GaugeRange(
                      labelStyle: GaugeTextStyle(color: Colors.white),
                      startValue: 747,
                      endValue: 1000,
                      color: Colors.green,
                      startWidth: 10,
                      endWidth: 10)
                ],
                pointers: const <GaugePointer>[
                  NeedlePointer(
                    value: 400,
                    knobStyle: KnobStyle(color: Colors.white),
                    needleColor: Colors.white,
                  )
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Container(
                          child: const Text('Score 400',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red))),
                      angle: 90,
                      positionFactor: 0.5)
                ])
          ]),
    );
  }

  // SizedBox displayGraphScore(
  //     String title, List<ChartData> totalScore, double maxValue) {
  //   return SizedBox(
  //     height: MediaQuery.of(context).size.height * 0.35,
  //     child: SfCircularChart(
  //       annotations: <CircularChartAnnotation>[
  //         CircularChartAnnotation(
  //           widget: BlackTextBody(
  //             data: "${maxValue.abs().toInt()} Score",
  //           ),
  //         ),
  //       ],
  //       series: <CircularSeries>[
  //         // Renders radial bar chart
  //         RadialBarSeries<ChartData, String>(
  //             trackColor: Colors.green,
  //             strokeColor: Colors.green,
  //             dataSource: totalScore,
  //             sortingOrder: SortingOrder.ascending,
  //             useSeriesColor: true,
  //             trackOpacity: 0.3,
  //             xValueMapper: (ChartData data, _) => data.x,
  //             yValueMapper: (ChartData data, _) => maxValue,
  //             radius: '80%',
  //             innerRadius: '80%',
  //             cornerStyle: CornerStyle.endCurve,
  //             gap: '3%',
  //             maximumValue: 1000,
  //             pointColorMapper: (ChartData data, _) => data.color,
  //             // dataLabelSettings: const DataLabelSettings(
  //             //     // Renders the data label
  //             //     isVisible: true),
  //             animationDelay: 2.0,
  //             strokeWidth: 0.2,
  //             trackBorderWidth: 1.0),
  //       ],
  //     ),
  //   );
  // }

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
