import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text('Soy un titulo'),
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            subtitle: const Text(
                'Aliquip irure eiusmod deserunt nisi occaecat ea duis duis eiusmod. Tempor amet irure irure id elit esse id est laboris incididunt. Irure ex exercitation velit esse esse eu. Dolor do duis magna et ullamco et ut. Amet pariatur excepteur irure enim. Mollit quis id ex nisi labore anim anim nisi quis et aliquip cupidatat officia.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
