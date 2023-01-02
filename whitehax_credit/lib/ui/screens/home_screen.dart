import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../black_text_body.dart';
import '../../black_text_body_small.dart';
import '../../controller/home_controller.dart';
import '../../pink_text_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController _homeController = Get.put(HomeController());
  late List<ChartData> gameScoreChart = List.empty(growable: true);

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
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
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
                          const SizedBox(
                            height: 50,
                          ),
                          Expanded(
                            flex: 0,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const BlackTextBody(
                                  data: "Score - Equifar",
                                ),
                                const PinkTextBody(
                                  data: "Download",
                                )
                              ],
                            ),
                          ),
                          displayGraphScore("", gameScoreChart,
                              _homeController.score.value.toDouble()),
                          Expanded(
                            flex: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BlackTextBody(data: "Updated"),
                                  BlackTextBody(data: "FEB 15 , 2022")
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            flex: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BlackTextBody(data: "Next Update"),
                                  BlackTextBody(data: "MAR 15 , 2022")
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 2, right: 2, top: 10, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 5, bottom: 10),
                                    child:
                                        BlackTextBody(data: "Credit Accounts"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 5, bottom: 10),
                                    child: Text(
                                        "Your Credit report includes information about your activity on your credit account that affects your credit score and rating.\nThe Table below is an overview of your current account and status."),
                                  ),
                                  tableHead(),
                                  tableBody(
                                      "ReWorking",
                                      _homeController
                                          .providerViews
                                          .first
                                          .summary
                                          .revolvingAccounts
                                          .balance
                                          .amount,
                                      _homeController
                                          .providerViews
                                          .first
                                          .summary
                                          .revolvingAccounts
                                          .monthlyPaymentAmount
                                          .amount),
                                  tableBody(
                                      "Mortgage",
                                      _homeController
                                          .providerViews
                                          .first
                                          .summary
                                          .mortgageAccounts
                                          .balance
                                          .amount,
                                      _homeController
                                          .providerViews
                                          .first
                                          .summary
                                          .mortgageAccounts
                                          .monthlyPaymentAmount
                                          .amount),
                                  tableBody(
                                      "Installment",
                                      _homeController
                                          .providerViews
                                          .first
                                          .summary
                                          .installmentAccounts
                                          .balance
                                          .amount,
                                      _homeController
                                          .providerViews
                                          .first
                                          .summary
                                          .installmentAccounts
                                          .monthlyPaymentAmount
                                          .amount),
                                  tableBody(
                                      "Other",
                                      _homeController
                                          .providerViews
                                          .first
                                          .summary
                                          .mortgageAccounts
                                          .balance
                                          .amount,
                                      _homeController
                                          .providerViews
                                          .first
                                          .summary
                                          .mortgageAccounts
                                          .monthlyPaymentAmount
                                          .amount),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // Expanded(
                          //   flex: 2,
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(
                          //         left: 2, right: 2, top: 10),
                          //     child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.start,
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Padding(
                          //           padding: const EdgeInsets.only(
                          //               left: 8, right: 8, top: 5, bottom: 10),
                          //           child: BlackTextBody(
                          //               data: "Other Credit Item"),
                          //         ),
                          //         Padding(
                          //           padding: const EdgeInsets.only(
                          //               left: 8, right: 8, top: 5, bottom: 10),
                          //           child: Text(
                          //               "Your Credit report includes information about instances of non-account items that may affect your credit score and rating.\nThe below info is summary of non-account related items of your report "),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
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
          outside: const BorderSide(width: 1, color: Colors.white),
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

  Expanded displayGraphScore(
      String title, List<ChartData> totalScore, double maxValue) {
    return Expanded(
      flex: 3,
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
          inside: const BorderSide(width: 1, color: Colors.white),
          outside: const BorderSide(width: 1, color: Colors.white),
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
