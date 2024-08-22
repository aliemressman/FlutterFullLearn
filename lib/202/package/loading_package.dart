import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPackage extends StatelessWidget {
  const LoadingPackage({super.key, this.size});
  final double? size;
  final double defaultSize = 50.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitCubeGrid(
        itemBuilder: (BuildContext context, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.red : Colors.green,
            ),
          );
        },
        size: size ?? defaultSize,
      ),
    );
  }
}
