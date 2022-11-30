import 'package:devfestui/button.dart';
import 'package:devfestui/constants.dart';
import 'package:devfestui/dev_scaffold.dart';
import 'package:devfestui/event.dart';
import 'package:devfestui/screen_3.dart';
import 'package:devfestui/utils.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  final Event event;
  const Screen2({Key? key, required this.event}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(getImage('background')),
        ),
        helpResponsive(),
        Column(
          children: [
            const Text(
              'SCHEDULE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Holder(
                  label: 'Day 1',
                  height: 35.0,
                  color: index == 0
                      ? const Color(0xFFffd76d)
                      : const Color(0xFFeae7e7),
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                ),
                const SizedBox(width: 15.0),
                Holder(
                  label: 'Day 2',
                  height: 35.0,
                  color: index == 1
                      ? const Color(0xFFffd76d)
                      : const Color(0xFFeae7e7),
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        helpResponsive(),
        Column(
          children: [
            ScheduleItem(
              part: widget.event.parts[index][0],
              color: const Color(0xFFb0d1ff),
              border: const Color(0xFF2b82fb),
            ),
            ScheduleItem(
              part: widget.event.parts[index][1],
              color: const Color(0xFFfff0ca),
              border: const Color(0xFFffd76d),
            ),
            ScheduleItem(
              part: widget.event.parts[index][2],
              color: const Color(0xFFb0d1ff),
              border: const Color(0xFF2b82fb),
            ),
            ScheduleItem(
                part: widget.event.parts[index][3],
                color: const Color(0xFFffb0b0),
                border: const Color(0xFFfd0000)),
            ScheduleItem(
              part: widget.event.parts[index][4],
              color: const Color(0xFFb0d1ff),
              border: const Color(0xFF2b82fb),
            ),
          ],
        ),
        helpResponsive(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Holder(
              label: 'Q & A',
              color: const Color(0xFFffb0b0),
              onPressed: () {},
            ),
            Holder(
              label: 'FEEDBACK',
              color: const Color(0xFFffd76d),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SafeArea(
                      child: DevFestScaffold(
                        body: SizedBox(
                          child: SingleChildScrollView(
                            child: Screen3(),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            Holder(
              label: 'SUBSCRIBE',
              color: const Color(0xFFb0d1ff),
              onPressed: () {},
            ),
          ],
        ),
        helpResponsive(),
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

  Widget helpResponsive() {
    return SizedBox(
      height: screenHeight < 650 ? 20 : 0,
    );
  }
}
/*
class Holder extends StatelessWidget {
  final String label;
  final double height;
  final Color color;
  final Function onPressed;
  const Holder({
    Key? key,
    required this.label,
    this.color = Colors.transparent,
    this.height = 45.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed;
      },
      child: Container(
        height: height,
        width: 80.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: color,
        ),
        child: Center(
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}*/

class ScheduleItem extends StatelessWidget {
  final Part part;
  final Color color, border;
  const ScheduleItem({
    Key? key,
    required this.part,
    required this.color,
    required this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 45.0,
            width: 80.0,
            padding: const EdgeInsets.only(right: 8.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Color(0xFFeae7e7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  part.time,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(part.date),
              ],
            ),
          ),
          Container(
            height: 45.0,
            width: 200,
            padding: const EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
              color: color.withOpacity(.5),
              border: Border(
                left: BorderSide(color: border, width: 3.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  part.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
