import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../model/crs_credit.dart';
import '../utiles/constant.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;

  List<ProviderViews> providerViews =
      List<ProviderViews>.empty(growable: true).obs;

  var score = 800.obs;
  displayCreditScore() async {
    isLoading.value = true;
    try {
      final String response = await rootBundle.loadString(csr_reslt);
      final data = await json.decode(response);
      print("data");
      CrsCredit crsCredit = CrsCredit.fromJson(data);
      providerViews = crsCredit.providerViews;
      score.value = providerViews.first.summary.creditScore.score;
      isLoading.value = false;
    } catch (e) {
      e.printError();
      isLoading.value = false;
    }
  }
}
