import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  const NeuBox({
    Key? key,
    this.child,
  }) : super(key: key);

  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // darker shadow on the bottom right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: const Offset(5, 5),
          ),

          const BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5, -5),
          ),

          //light shadow on the top left
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
