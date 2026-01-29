import 'package:cripto_list_app/repositories/coins_repository.dart';
import 'package:flutter/material.dart';

class CoinsPage extends StatefulWidget {
  const CoinsPage({super.key});

  @override
  State<CoinsPage> createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
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
            title: Text(CoinsRepository.coinsList[index].name),
            subtitle: Text(
              '${CoinsRepository.coinsList[index].symbol} - ${CoinsRepository.coinsList[index].priceUsd} USD',
            ),
            leading: SizedBox(
              width: 40,
              child: Image.asset(CoinsRepository.coinsList[index].iconUrl),
            ),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: CoinsRepository.coinsList.length,
      ),
    );
  }
}
