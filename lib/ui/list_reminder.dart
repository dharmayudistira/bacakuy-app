import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_reminder.dart';
import 'edit_reminder.dart';

class ReminderList extends StatefulWidget {
  const ReminderList({Key? key}) : super(key: key);

  @override
  State<ReminderList> createState() => _ReminderListState();
}

class _ReminderListState extends State<ReminderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Bacakuy',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundList(),
            Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "Hallo Bacakuyers!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text("Yuk periksa agenda mu hari ini!", style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset("assets/images/selecting.png"),
                ),
                listReminder(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddReminder()));
          },
          child: const Icon(Icons.add)),
    );
  }

  Widget backgroundList() {
    return Container(
      decoration: BoxDecoration(),
    );
  }

  Widget listReminder() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Colors.cyan,
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
