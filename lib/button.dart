import 'package:flutter/material.dart';
import 'package:devfestui/constants.dart';

class Holder extends TextButton {
  final double height, width;
  final Color color;
  Holder({
    Key? key,
    required super.onPressed,
    required this.color,
    this.height = 35.0,
    this.width = 85.0,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.antiAlias,
    String? label,
    String icon = '',
    Widget? son,
  }) : super(
          key: key,
          child: son ??
              Container(
                height: height,
                width: width,
                // padding: const EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  color: color,
                ),
                child: Center(
                  child: Text(
                    label!,
                    style: const TextStyle(
                      color: white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
        );
}
