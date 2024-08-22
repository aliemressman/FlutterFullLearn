import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  final String lastName = 'Sisman';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ali Emre $lastName',
            maxLines: 2,
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 25,
              decoration: TextDecoration.lineThrough,
              wordSpacing: 2,
              letterSpacing: 5,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text('Ali Emre $lastName',
              maxLines: 2,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ProjectColors.nameColor2,
                  )),
          Text(
            '+ Ali Emre $lastName +',
            maxLines: 2,
            textAlign: TextAlign.start,
            style: ProjectStyles.nameStyle,
          ),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle nameStyle = TextStyle(
    fontSize: 25,
    decoration: TextDecoration.underline,
    wordSpacing: 2,
    letterSpacing: 5,
    color: ProjectColors.nameColor3,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
  );
}

class ProjectColors {
  static Color nameColor1 = Colors.blue;
  static Color nameColor2 = Colors.red;
  static Color nameColor3 = Colors.pink;
}
