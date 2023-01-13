import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final option = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 1'),
        ),
        body: ListView(
          children: <Widget>[
            ...option
                .map((e) => ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ))
                .toList()
            // ListTile(
            //   title: Text('Hola Mundo'),
            // )
          ],
        ));
  }
}
