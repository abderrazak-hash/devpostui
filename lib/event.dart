class Event {
  final String name;
  final List<List<Part>> parts;

  Event({required this.name, required this.parts});
}

class Part {
  final String title, time, date;
  Part({required this.title, required this.time, required this.date});
}

List<Event> events = [
  Event(
    name: 'DevFest',
    parts: [
      [
        Part(title: 'WELCOME PART', time: '09:00 AM', date: '01 Nov'),
        Part(title: 'WORKSHOP 1', time: '11:00 AM', date: '01 Nov'),
        Part(title: 'LUNCH', time: '12:30 PM', date: '01 Nov'),
        Part(title: 'FLUTTER GO!', time: '04:00 PM', date: '01 Nov'),
        Part(title: 'GOOD BYE', time: '02:30 PM', date: '01 Nov'),
      ],
      [
        Part(title: 'WELCOME PART', time: '09:00 AM', date: '02 Nov'),
        Part(title: 'WORKSHOP 2', time: '11:00 AM', date: '02 Nov'),
        Part(title: 'LUNCH', time: '12:30 PM', date: '02 Nov'),
        Part(title: 'FLUTTER FUTURE!', time: '02:30 PM', date: '02 Nov'),
        Part(title: 'GOOD BYE', time: '04:00 PM', date: '02 Nov'),
      ],
    ],
  ),
  Event(
    name: 'AI Here',
    parts: [
      [
        Part(title: 'WELCOME PART', time: '09:00 AM', date: '15 JAN'),
        Part(title: 'AI WORKSHOP', time: '11:00 AM', date: '15 JAN'),
        Part(title: 'LUNCH', time: '12:30 PM', date: '15 JAN'),
        Part(title: 'WHAT\'S NEXT!', time: '04:00 PM', date: '15 JAN'),
        Part(title: 'NEXT UP', time: '02:30 PM', date: '15 JAN'),
      ],
      [
        Part(title: 'CODING MORNING', time: '09:00 AM', date: '16 JAN'),
        Part(title: 'ML WORKSHOP', time: '11:00 AM', date: '16 JAN'),
        Part(title: 'LUNCH', time: '12:30 PM', date: '16 JAN'),
        Part(title: 'ROBOTS FUTURE!', time: '02:30 PM', date: '16 JAN'),
        Part(title: 'SEE YOU', time: '04:00 PM', date: '16 JAN'),
      ],
    ],
  ),
  Event(
    name: 'Smart Algeirs',
    parts: [
      [
        Part(title: 'BIG HELLO', time: '08:00 AM', date: '22 MAR'),
        Part(title: 'FIRST WORKSHOP', time: '10:00 AM', date: '22 MAR'),
        Part(title: 'LUNCH', time: '11:30 PM', date: '22 MAR'),
        Part(title: 'PYTHON GO!', time: '03:00 PM', date: '22 MAR'),
        Part(title: 'BIG BYE', time: '04:30 PM', date: '22 MAR'),
      ],
      [
        Part(title: 'SECOND WELCOME', time: '08:00 AM', date: '23 MAR'),
        Part(title: 'WHY PYTHON', time: '10:00 AM', date: '23 MAR'),
        Part(title: 'LUNCH', time: '11:45 PM', date: '23 MAR'),
        Part(title: 'BE SMART', time: '03:30 PM', date: '23 MAR'),
        Part(title: 'AGAIN IT', time: '04:30 PM', date: '23 MAR'),
      ],
    ],
  ),
];
