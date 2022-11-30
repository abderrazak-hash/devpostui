import 'package:devfestui/constants.dart';
import 'package:devfestui/dev_scaffold.dart';
import 'package:devfestui/event.dart';
import 'package:devfestui/screen_2.dart';
import 'package:devfestui/utils.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(getImage('background')),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(text: 'CURRENT '),
                TextSpan(
                  text: 'E',
                  style: TextStyle(
                    color: mainClr,
                  ),
                ),
                TextSpan(
                  text: 'VENTS',
                )
              ],
            ),
            textScaleFactor: 0.5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SafeArea(
                    child: DevFestScaffold(
                      body: SizedBox(
                        child: screenHeight < 600
                            ? SingleChildScrollView(
                                child: Screen2(event: events[0]),
                              )
                            : Screen2(event: events[0]),
                      ),
                    ),
                  ),
                ),
              );
            },
            child: Container(
              height: 400.0,
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      getImage('background5'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        getImage('background4'),
                        width: screenWidth * .8,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            getImage('Globe'),
                          ),
                        ),
                        Center(
                          child: Text(
                            events[0].name,
                            style: const TextStyle(
                              fontSize: 30,
                              color: white,
                            ),
                          ),
                        ),
                        const Center(
                            child: Text(
                          'LOREM IPSUM IS SIMPLY DUMMY TEXT etc ..\n'
                          'Description of the event ...',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w100,
                            color: white,
                          ),
                        )),
                        // const Text(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset(getImage('Developers')),
                                const Text(
                                  '+80',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: white,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(getImage('Pointer')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: screenWidth * .08),
                child: Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'UPCOMING '),
                          TextSpan(
                            text: 'E',
                            style: TextStyle(
                              color: mainClr,
                            ),
                          ),
                          TextSpan(
                            text: 'VENTS',
                          )
                        ],
                      ),
                      textScaleFactor: 0.5,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image.asset(
                        getImage('Arrow'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(events.length,
                      (index) => EventWidget(event: events[index])),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EventWidget extends StatelessWidget {
  final Event event;
  const EventWidget({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SafeArea(
                      child: DevFestScaffold(
                        body: SizedBox(
                          child: SingleChildScrollView(
                            child: Screen2(event: event),
                          ),
                        ),
                      ),
                    )));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth * .05),
        height: 150.0,
        width: screenWidth * .8,
        child: Stack(
          children: [
            Image.asset(
              getImage(
                'background3',
              ),
              width: screenWidth * .8,
              height: 150.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      getImage('Event_label_image'),
                      width: 50.0,
                    ),
                    Image.asset(
                      getImage('text'),
                      width: screenWidth * .6,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
