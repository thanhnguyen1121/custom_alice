import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Widget which displays formatted text row. It allows to select the text.
class AliceCallListRow extends StatelessWidget {
  final String name;
  final String? value;
  final VoidCallback? onPressed;

  const AliceCallListRow({
    required this.name,
    this.value,
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        onPressed?.call();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
          ),
          Flexible(
            child: value != null
                ? SelectableText(
                    value!,
                  )
                : const SizedBox(),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
          ),
        ],
      ),
    );
  }
}
