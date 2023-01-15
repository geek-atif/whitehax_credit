import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whitehax_credit/ui/red_text_body.dart';
import '../../controller/home_controller.dart';
import '../styles/my_app_theme.dart';
import '../widgets/dark_text_small.dart';

class NegativeAccountScreen extends StatefulWidget {
  const NegativeAccountScreen({super.key});

  @override
  State<NegativeAccountScreen> createState() => _NegativeAccountScreenState();
}

class _NegativeAccountScreenState extends State<NegativeAccountScreen> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = GlobalKey();
  final GlobalKey<ExpansionTileCardState> card1 = GlobalKey();
  final GlobalKey<ExpansionTileCardState> card2 = GlobalKey();

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
      backgroundColor: MyAppTheme.whitehaxBackgroundColor,
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 5),
            child: RedTextBody(data: "Negative Account"),
          ),
          expansionCardUIOne(context),
          expansionCardUITwo(context),
          // expansionCardUIThree(context),
          // expansionCardUIFour(context),
          // //expansionCardUIFive(context),
          // expansionCardUISix(context)
        ],
      ),
    ));
  }

  Padding expansionCardUIOne(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: ExpansionTileCard(
        baseColor: Colors.white,
        expandedColor: Colors.white,
        key: cardA,
        //leading: DarkTextSmall(data: "Account Name : CAPITAL ONE"),
        title: const DarkTextSmall(data: "Account Name : CAPITAL ONE"),
        subtitle: const DarkTextSmall(data: "Account Number : xxxxxx 00"),
        children: const <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
                DarkTextSmall(data: "Account Status : INCLUDED_IN_BANKRUPTCY"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Account Type : REVOLVING"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Loan Type : CREDIT_CARD"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(
                data:
                    "Comments : Bankruptcy chapter 7, Account closed by credit grantor"),
          )
        ],
      ),
    );
  }

  Padding expansionCardUITwo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: ExpansionTileCard(
        baseColor: Colors.white,
        expandedColor: Colors.white,
        key: cardB,
        //leading: DarkTextSmall(data: "Account Name : CAPITAL ONE"),
        title: const DarkTextSmall(data: "Account Name : CAPITAL ONE BANK "),
        subtitle: const DarkTextSmall(data: "Account Number : xxxxx 2639"),
        children: const <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
                DarkTextSmall(data: "Account Status : INCLUDED_IN_BANKRUPTCY"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Account Type : REVOLVING"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Loan Type : CREDIT_CARD"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(
                data:
                    "Comments : Bankruptcy chapter 7, Account closed by credit grantor"),
          )
        ],
      ),
    );
  }

  Padding expansionCardUIThree(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: ExpansionTileCard(
        baseColor: Colors.white,
        expandedColor: Colors.white,
        key: cardC,
        //leading: DarkTextSmall(data: "Account Name : CAPITAL ONE"),
        title: const DarkTextSmall(data: "Account Name : MID OHIO FINANCE "),
        subtitle: const DarkTextSmall(data: "Account Number : xxxxx 3439"),
        children: const <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Account Status : MANUFACTURED_HOUSING"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Account Type : MORTGAGE"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Loan Type : MANUFACTURED_HOUSING"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(
                data:
                    "Comments : Bankruptcy chapter 7, Account closed by credit grantor"),
          )
        ],
      ),
    );
  }

  Padding expansionCardUIFour(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: ExpansionTileCard(
        baseColor: Colors.white,
        expandedColor: Colors.white,
        key: cardD,
        //leading: DarkTextSmall(data: "Account Name : CAPITAL ONE"),
        title: const DarkTextSmall(data: "Account Name :MID OHIO FINANCE "),
        subtitle: const DarkTextSmall(data: "Account Number : xxxxx 2639"),
        children: const <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
                DarkTextSmall(data: "Account Status : INCLUDED_IN_BANKRUPTCY"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Account Type : REVOLVING"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Loan Type : CREDIT_CARD"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(
                data:
                    "Comments : Bankruptcy chapter 7, Account closed by credit grantor"),
          )
        ],
      ),
    );
  }

  expansionCardUISix(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: ExpansionTileCard(
        baseColor: Colors.white,
        expandedColor: Colors.white,
        key: card2,
        //leading: DarkTextSmall(data: "Account Name : CAPITAL ONE"),
        title: const DarkTextSmall(data: "Account Name : Trie BANK "),
        subtitle: const DarkTextSmall(data: "Account Number : xxxxx 6539"),
        children: const <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
                DarkTextSmall(data: "Account Status : INCLUDED_IN_BANKRUPTCY"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Account Type : REVOLVING"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(data: "Loan Type : CREDIT_CARD"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DarkTextSmall(
                data:
                    "Comments : Bankruptcy chapter 13, Account closed by credit grantor"),
          )
        ],
      ),
    );
  }
}
