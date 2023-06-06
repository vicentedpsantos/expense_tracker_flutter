import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveDialog {
  AdaptiveDialog(
      {required this.title, required this.content, required this.actions});

  final Text title;
  final Widget content;
  final List<Widget> actions;

  void render(BuildContext context) {
    if (Platform.isIOS) {
      showCupertinoDialog(
          context: context,
          builder: (ctx) => CupertinoAlertDialog(
                title: title,
                content: content,
                actions: actions,
              ));
    } else {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: title,
                content: content,
                actions: actions,
              ));
    }
  }
}
