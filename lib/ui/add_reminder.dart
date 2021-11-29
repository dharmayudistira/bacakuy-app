import 'package:flutter/material.dart';

class AddReminder extends StatefulWidget {
  static const routeName ='/add_page';
  static const String addHeadline = 'Reminder';

  @override
  State<AddReminder> createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  late DateTime datePick;
  late TimeOfDay timePick;


  @override
  void initState() {
    super.initState();
    datePick = DateTime.now();
    timePick = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Bacakuy',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: const [
                  SizedBox(height: 20),
                  Text(
                    'Add Reminder',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Read your books, 30 pages a day!',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height-650,
                width: MediaQuery.of(context).size.width-100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIWN2Hc90QA9GeMyJ7YTe7_Lske_gdK8RBww&usqp=CAU'),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 25),
              Column(
                children: const [
                  Text(
                    "Book's Title",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    "Notes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              Column(
                children: const [
                  Text(
                    "Last Page",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(right: 120, left: 120),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 120),
                  OutlineButton(
                      child: Text('Pick your Time'),
                      onPressed: () async {
                        TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: timePick,
                        );
                        if (time != null) {
                          setState(() {
                            timePick = time;
                          });
                        }
                      }),
                  const SizedBox(width: 10),
                  Text(
                    "${timePick.hour}:${timePick.minute}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add_a_photo_outlined),
            onPressed: () {},
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.arrow_downward),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
