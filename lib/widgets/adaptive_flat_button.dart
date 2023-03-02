import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final void Function()? handler;

  AdaptiveButton({required this.text, required this.handler});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.purple.withOpacity(1),
            ),
            onPressed: handler,
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
