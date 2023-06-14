import 'package:dementia_care_app/pages/calendar_page.dart';
import 'package:dementia_care_app/pages/file_page.dart';
import 'package:dementia_care_app/pages/emergency_contact.dart';
import 'package:dementia_care_app/pages/reminder_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/message_page.dart';
import '../pages/book_page.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///added for navigator buildcontext  to detect navigation and route poges
  BuildContext? _context;
  void didChangeDependencies() {
    super.didChangeDependencies();
    _context = context;
  }

  final List<String> gridTexts = [
    'Calendar',
    'Book',
    'File',
    'Reminder',
    'Message',
    'Emergency Contact',
  ];

  final List<IconData> gridIcons = [
    Icons.calendar_today,
    Icons.book,
    Icons.file_download_done_outlined,
    Icons.notifications_none_rounded,
    Icons.video_collection_sharp,
    Icons.contact_emergency_outlined,
  ];

  void navigateToScreen(int index) {
    /// Added navigation logic here
    ///Use Navigator.push to navigate to respective screens based on index
    ///if index is 0, navigate to CalendarScreen
    /// If index is 1, navigate to NoteScreen, and so on.
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const CalendarPage();
          }),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FilePage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReminderPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MessagePage()),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EmergencyContactPage()),
        );
        break;
    }
  }

  Widget buildCard(String text, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 160, 10, 10),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 8.0),
          Icon(
            icon,
            size: 48.0,
            color: Colors.white,
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 16.0,
              ),
              itemCount: gridTexts.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Add functionality for navigation to respective screens
                    navigateToScreen(index);
                  },
                  child: buildCard(gridTexts[index], gridIcons[index]),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
