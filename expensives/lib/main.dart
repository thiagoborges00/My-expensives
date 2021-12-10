import '/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const Expensives());
}

class Expensives extends StatelessWidget {
  const Expensives({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  final _transactions = [
    Transaction(
        id: "1",
        title: "Posto de gasolina",
        value: 78.65,
        descricao: "abastecimento com km 49872",
        date: DateTime.now()),
    Transaction(
        id: '2',
        title: 'title',
        value: 65.99,
        descricao: 'descricao',
        date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas Despesas"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            // width: double.infinity,
            // height: 140.0,
            color: Colors.amber[200],
            child: const Card(
              color: Colors.yellowAccent,
              elevation: 5.0,
              child: Text("Grafico"),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Text(tr.title),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
