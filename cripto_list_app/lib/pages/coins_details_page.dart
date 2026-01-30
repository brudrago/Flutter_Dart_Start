import 'package:cripto_list_app/models/coins_model.dart';
import 'package:flutter/material.dart';

class CoinsDetailsPage extends StatefulWidget {
  Coins coin;

  CoinsDetailsPage({Key? key, required this.coin}) : super(key: key);

  @override
  State<CoinsDetailsPage> createState() => _CoinsDetailsPageState();
}

class _CoinsDetailsPageState extends State<CoinsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.coin.name),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
