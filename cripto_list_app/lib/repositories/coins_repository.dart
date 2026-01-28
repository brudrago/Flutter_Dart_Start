import 'package:cripto_list_app/models/Coins.dart';

class CoinsRepository {
  static List<Coins> coinsList = [
    Coins(
      name: 'Bitcoin',
      symbol: 'BTC',
      priceUsd: 50000.0,
      iconUrl: 'images/bitcoin.png',
    ),
    Coins(
      name: 'Ethereum',
      symbol: 'ETH',
      priceUsd: 4000.0,
      iconUrl: 'images/ethereum.png',
    ),
    Coins(
      name: 'Litecoin',
      symbol: 'LTC',
      priceUsd: 200.0,
      iconUrl: 'images/coin.png',
    ),
    Coins(
      name: 'Cardano',
      symbol: 'ADA',
      priceUsd: 100.0,
      iconUrl: 'images/cardano.png',
    ),
    Coins(
      name: 'XRP',
      symbol: 'XRP',
      priceUsd: 200.0,
      iconUrl: 'images/xrp.png',
    ),
  ];
}
