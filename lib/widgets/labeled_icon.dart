
import 'package:flutter/material.dart';
import 'package:travel_app/context_extensions.dart';

class LabeledIcon extends StatelessWidget {
  const LabeledIcon({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 16, width: 16, child: icon),
        SizedBox(width: 5),
        Flexible(
          child: Text(
            maxLines: 2,
            label,
            style: context.textTheme.bodySmall,
            overflow: .ellipsis,
          ),
        ),
      ],
    );
  }
}