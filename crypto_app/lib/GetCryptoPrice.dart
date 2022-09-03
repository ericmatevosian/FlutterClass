import 'package:http/http.dart' as http;
import 'dart:convert';


class GetCryptoPrice{

  String api_key="b00a39e9-136b-4e00-8296-f339fb0a0806";
  String url="https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=100&convert=USD&CMC_PRO_API_KEY=";
  static const int Bitcoin_id = 1;
  static const int Ethereum_id = 1027;
  static const int Cardano_id = 2010;

  double? Bitcoin_price;
  double  Bitcoin_change24h=0;
  double? Bitcoin_marketCap;
  bool    Bitcoin_change24h_bool = false;

  double? Ethereum_price;
  double  Ethereum_change24h=0;
  double? Ethereum_marketCap;
  bool    Ethereum_change24h_bool = false;

  double? Cardano_price;
  double  Cardano_change24h=0;
  double? Cardano_marketCap;
  bool   Cardano_change24h_bool = false;

  int responseHelper=0;

  static const divisionIndex = 1000000000;

  double price=0;

  Future<void> getData() async{

    http.Response response = await http.get(Uri.parse("https://pro-api.coinmarketcap.com/v1/"
        "cryptocurrency/listings/latest?start=1&limit=100&convert=USD&CMC_PRO_API_KEY=${api_key}"));

    if(response.statusCode == 200){

      String data = response.body;
      responseHelper = response.statusCode;
      //price = jsonDecode(data)['data'][0]['quote']['USD']['price'];
      for(int i=0 ; i<99 ; i++){

        if( jsonDecode(data)['data'][i]['id'] == Bitcoin_id ){
          Bitcoin_price =     jsonDecode(data)['data'][i]['quote']['USD']['price'];
          Bitcoin_change24h = jsonDecode(data)['data'][i]['quote']['USD']['percent_change_24h'];
          Bitcoin_marketCap = (jsonDecode(data)['data'][i]['quote']['USD']['market_cap'])/divisionIndex;

          if(Bitcoin_change24h>0) {Bitcoin_change24h_bool = true;} else Bitcoin_change24h_bool = false;
        }

        if( jsonDecode(data)['data'][i]['id'] == Ethereum_id ){
          Ethereum_price =     jsonDecode(data)['data'][i]['quote']['USD']['price'];
          Ethereum_change24h = jsonDecode(data)['data'][i]['quote']['USD']['percent_change_24h'];
          Ethereum_marketCap = (jsonDecode(data)['data'][i]['quote']['USD']['market_cap']/divisionIndex);

          if(Ethereum_change24h>0) {Ethereum_change24h_bool = true;} else Ethereum_change24h_bool = false;
        }

        if( jsonDecode(data)['data'][i]['id'] == Cardano_id ){
          Cardano_price =     jsonDecode(data)['data'][i]['quote']['USD']['price'];
          Cardano_change24h = jsonDecode(data)['data'][i]['quote']['USD']['percent_change_24h'];
          Cardano_marketCap = (jsonDecode(data)['data'][i]['quote']['USD']['market_cap'])/divisionIndex;

          if(Cardano_change24h>0) {Cardano_change24h_bool = true;} else Cardano_change24h_bool = false;
        }

      }

      // print("BTC Price = ${Bitcoin_price}");
      // print("ETH Price = ${Ethereum_price}");
      // print("ADA Price = ${Cardano_price}");



    }else print("Error: ${response.statusCode}");


  }

}