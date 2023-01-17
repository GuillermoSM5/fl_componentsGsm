import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final option = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(option[index]),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.amber.shade900),
                  onTap: () {
                    // final game = option[index];
                    // print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: option.length));
  }
}
