import 'package:flutter/material.dart';
import 'CryptoCard.dart';
import 'GetCryptoPrice.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';


class MyScaffold extends StatefulWidget {
  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  String? Bitcoin_price;
  String Bitcoin_change24h = "";
  String? Bitcoin_marketCap;
  bool Bitcoin_change24h_bool = false;

  String? Ethereum_price;
  String Ethereum_change24h = "";
  String? Ethereum_marketCap;
  bool Ethereum_change24h_bool = false;

  String? Cardano_price;
  String Cardano_change24h = "";
  String? Cardano_marketCap;
  bool Cardano_change24h_bool = false;

  GetCryptoPrice CryptoData = GetCryptoPrice();

  Future<void> getResult() async {
    await CryptoData.getData();
    Bitcoin_price = CryptoData.Bitcoin_price?.toStringAsFixed(1) ?? "0";
    Bitcoin_change24h = CryptoData.Bitcoin_change24h.toStringAsFixed(1);
    Bitcoin_marketCap = CryptoData.Bitcoin_marketCap?.toStringAsFixed(1) ?? "0";
    Bitcoin_change24h_bool = CryptoData.Bitcoin_change24h_bool;

    Ethereum_price = CryptoData.Ethereum_price?.toStringAsFixed(1) ?? "0";
    Ethereum_change24h = CryptoData.Ethereum_change24h.toStringAsFixed(1);
    Ethereum_marketCap =
        CryptoData.Ethereum_marketCap?.toStringAsFixed(1) ?? "0";
    Ethereum_change24h_bool = CryptoData.Ethereum_change24h_bool;

    Cardano_price = CryptoData.Cardano_price?.toStringAsFixed(1) ?? "0";
    Cardano_change24h = CryptoData.Bitcoin_change24h.toStringAsFixed(1);
    Cardano_marketCap = CryptoData.Cardano_marketCap?.toStringAsFixed(1) ?? "0";
    Cardano_change24h_bool = CryptoData.Cardano_change24h_bool;

    print("Bitcoin_price = ${Bitcoin_price}");
    print("Bitcoin_change24h = ${Bitcoin_change24h}");
    print("Bitcoin_marketCap = ${Bitcoin_marketCap}");
    print("---------------------------");
    print("Ethereum_price = ${Ethereum_price}");
    print("Ethereum_change24h = ${Ethereum_change24h}");
    print("Ethereum_marketCap = ${Ethereum_marketCap}");
    print("---------------------------");
    print("Cardano_price = ${Cardano_price}");
    print("Cardano_change24h = ${Cardano_change24h}");
    print("Cardano_marketCap = ${Cardano_marketCap}");
    print("---------------------------");
  }

  final spinkit = SpinKitFadingCircle(
    color: Colors.black,
    size: 50.0,
  );

  @override
  initState() {
    super.initState();

    getResult().then((value) => setState(() {}));

    // print("BTC Price = ${Bitcoin_price}");
    // print("ETH Price = ${Ethereum_price}");
    // print("ADA Price = ${Cardano_price}");
  }

  @override
  Widget build(BuildContext context) {
    if (CryptoData.responseHelper == 200) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade500,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      "CoinMarketCap",
                    style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                        fontSize: 40
                      )
                    ),
                  ),
                ),
                CryptoCard(
                  image: AssetImage("asset/images/Bitcoin.png"),
                  name: "Bitcoin",
                  price: Bitcoin_price,
                  change24h: Bitcoin_change24h,
                  change24h_color: Bitcoin_change24h_bool
                      ? Colors.green.shade700
                      : Colors.red.shade700,
                  marketCap: Bitcoin_marketCap,
                ),
                CryptoCard(
                  image: AssetImage("asset/images/Ethereum.png"),
                  name: "Ethereum",
                  price: Ethereum_price,
                  change24h: Ethereum_change24h,
                  change24h_color: Ethereum_change24h_bool
                      ? Colors.green.shade700
                      : Colors.red.shade700,
                  marketCap: Ethereum_marketCap,
                ),
                CryptoCard(
                  image: AssetImage("asset/images/Cardano.png"),
                  name: "Cardano",
                  price: Cardano_price,
                  change24h: Cardano_change24h,
                  change24h_color: Cardano_change24h_bool
                      ? Colors.green.shade700
                      : Colors.red.shade700,
                  marketCap: Cardano_marketCap,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "programmer: Eric",
                    style: GoogleFonts.inconsolata(
                        textStyle: TextStyle(
                            fontSize: 15,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          body: Center(
            child: spinkit,
          ),
        ),
      );
    }
    ;
  }
}
