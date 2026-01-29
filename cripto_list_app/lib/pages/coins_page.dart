import 'package:cripto_list_app/models/Coins.dart';
import 'package:cripto_list_app/repositories/coins_repository.dart';
import 'package:flutter/material.dart';

class CoinsPage extends StatefulWidget {
  const CoinsPage({super.key});

  @override
  State<CoinsPage> createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
  final Set<String> selectedCoinSymbols = {};

  bool _isSelected(Coins coin) {
    return selectedCoinSymbols.contains(coin.symbol);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cripto Moedas'),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            title: Text(
              CoinsRepository.coinsList[index].name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${CoinsRepository.coinsList[index].symbol} - ${CoinsRepository.coinsList[index].priceUsd} USD',
            ),
            leading: SizedBox(
              width: 40,
              child: Image.asset(CoinsRepository.coinsList[index].iconUrl),
            ),
            selected: _isSelected(CoinsRepository.coinsList[index]),
            selectedTileColor: Colors.indigo.shade50,
            onTap: () {
              setState(() {
                final coin = CoinsRepository.coinsList[index];
                if (_isSelected(coin)) {
                  selectedCoinSymbols.remove(coin.symbol);
                } else {
                  selectedCoinSymbols.add(coin.symbol);
                }
              });
            },
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: CoinsRepository.coinsList.length,
      ),
    );
  }
}
