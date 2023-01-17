import 'package:fl_components/widgets/wingets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2021/02/fine-art-landscape-photography-1003.jpg?fit=1458%2C969&ssl=1',
              textImg: 'Campo Bonito',
            ),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://images.squarespace-cdn.com/content/v1/5795a6914402433b8b4b3f74/1652319375667-SCDOQWQARKYR9Q16O6OA/IMG_4617.jpg'),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://www.amateurphotographer.co.uk/wp-content/uploads/2022/03/Landscape-South-Island-New-Zealand-820x500.jpg')
          ],
        ));
  }
}
