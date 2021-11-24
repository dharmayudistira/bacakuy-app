import 'package:flutter/material.dart';

class AddReminder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
                    'Read your books, 3 times a week!',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    "Book's Title",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
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
                  SizedBox(
                    height: 35,
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    "Notes",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
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
                  SizedBox(height: 20),
                ],
              ),
              Expanded(
                child: AddDateTime(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onSurface: Colors.blue,
                ),
                child: Text('Save'),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddDateTime extends StatefulWidget {
  @override
  _AddDateTimeState createState() => _AddDateTimeState();
}

class _AddDateTimeState extends State<AddDateTime> {
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
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Text(
              'Pick your Date',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "${datePick.day}/${datePick.month}/${datePick.year}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            onTap: _pickDate,
          ),
          ListTile(
            title: const Text(
              'Pick your Time',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "${timePick.hour}:${timePick.minute}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            onTap: _pickTime,
          )
        ],
    ));
  }

  _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 10),
      lastDate: DateTime(DateTime.now().year + 10),
      initialDate: datePick,
    );

    if (date != null) {
      setState(() {
        datePick = date;
      });
    }
  }

  _pickTime() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: timePick,
    );

    if (time != null) {
      setState(() {
        timePick = time;
      });
    }
  }
}
