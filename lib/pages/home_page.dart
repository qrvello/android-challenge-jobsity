import 'package:flutter/material.dart';
import 'package:tv_series/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TV Series'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => const ItemWidget(),
      ),
    );
  }
}
