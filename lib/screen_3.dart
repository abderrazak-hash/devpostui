import 'package:devfestui/button.dart';
import 'package:devfestui/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:devfestui/constants.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(getImage('background')),
        ),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(text: 'FEEDBACK '),
              TextSpan(
                text: 'F',
                style: TextStyle(
                  color: mainClr,
                ),
              ),
              TextSpan(
                text: 'ORM',
              )
            ],
          ),
          textScaleFactor: 0.5,
        ),
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Name / Email'),
              const SizedBox(height: 15.0),
              MyInput(hintText: ''),
            ],
          ),
        ),
        const Text('Rate your experience in the event'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Color(0xFFFF0000),
              Color(0xFFFFB0B0),
              Color(0xFFF9D67D),
              Color(0xFFBAFCC0),
              Color(0xFF31F600),
            ]
                .map(
                  (clr) => RateButton(
                    color: clr,
                  ),
                )
                .toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('MORE DETAILS'),
              const SizedBox(height: 15.0),
              MyInput(
                hintText: '',
                maxLines: 6,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding:
                const EdgeInsets.only(right: 35.0, top: 15.0, bottom: 20.0),
            child: Holder(
              label: 'SUBMIT',
              color: const Color(0xFFb0d1ff),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ),
        ),
        SizedBox(
          height: 110.0,
          child: Stack(
            children: [
              Image.asset(
                getImage('background2'),
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      getImage('background3'),
                      // height: 180.0,
                    ),
                  ),
                  Positioned(
                    bottom: 5.0,
                    child: Image.asset(getImage('text')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyInput extends TextField {
  final String hintText;
  final InputDecoration decorations;
  final double? letterSpacing;
  MyInput({
    Key? key,
    required this.hintText,
    this.letterSpacing,
    super.controller,
    super.focusNode,
    this.decorations = const InputDecoration(
      filled: true,
      fillColor: whitish,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: mainClr,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      hintStyle: TextStyle(
        color: greyish,
        fontSize: 15.0,
        letterSpacing: 1,
      ),
      hintTextDirection: TextDirection.rtl,
      contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
    ),
    TextInputType? keyboardType = TextInputType.text,
    super.textInputAction,
    super.textCapitalization = TextCapitalization.words,
    super.strutStyle,
    super.textAlign = TextAlign.center,
    super.textAlignVertical = TextAlignVertical.center,
    super.textDirection = TextDirection.ltr,
    super.readOnly = false,
    ToolbarOptions? toolbarOptions,
    super.showCursor = true,
    super.autofocus = false,
    super.obscuringCharacter = '•',
    super.obscureText = false,
    super.autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    super.enableSuggestions = true,
    super.maxLines = 1,
    super.minLines,
    super.expands = false,
    super.maxLength,
    super.maxLengthEnforcement,
    super.onChanged,
    super.onEditingComplete,
    super.onSubmitted,
    super.onAppPrivateCommand,
    super.inputFormatters,
    super.enabled,
    super.cursorWidth = 2.0,
    super.cursorHeight,
    super.cursorRadius = const Radius.circular(1.0),
    super.cursorColor = mainClr,
    super.selectionHeightStyle = ui.BoxHeightStyle.tight,
    super.selectionWidthStyle = ui.BoxWidthStyle.tight,
    super.keyboardAppearance,
    super.scrollPadding = const EdgeInsets.all(20.0),
    super.dragStartBehavior = DragStartBehavior.start,
    bool? enableInteractiveSelection,
    super.selectionControls,
    super.onTap,
    super.mouseCursor,
    super.buildCounter,
    super.scrollController,
    super.scrollPhysics,
    super.autofillHints = const <String>[],
    super.clipBehavior = Clip.hardEdge,
    super.restorationId,
    super.scribbleEnabled = true,
    super.enableIMEPersonalizedLearning = true,
  }) : super(
          key: key,
          decoration: decorations.copyWith(
            hintText: hintText,
            contentPadding: const EdgeInsets.all(20.0),
          ),
          style: TextStyle(
            color: mainClr,
            fontSize: 15.0,
            letterSpacing: letterSpacing ?? 1,
          ),
        );
}

class RateButton extends StatelessWidget {
  final Color color;
  const RateButton({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // DO smth
        print('Hi');
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
