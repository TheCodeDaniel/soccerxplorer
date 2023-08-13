import 'package:flutter/material.dart';

class CircleDetails extends StatelessWidget {
  final void Function()? onTap;
  final String sub;
  final Color? color;
  final Widget? body;
  const CircleDetails({
    super.key,
    this.onTap,
    required this.sub,
    this.body,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color ?? const Color.fromRGBO(236, 236, 236, 1),
            minRadius: 37,
            maxRadius: 37,
            child: body,
          ),
          const SizedBox(height: 5),
          Text(
            textAlign: TextAlign.center,
            sub,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
