import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Learn flutter",
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/einstein.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is a text widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                debugPrint('ElevatedButton');
              },
              child: const Text('Eleveated BUtton')),
          OutlinedButton(
              onPressed: () {
                debugPrint('OutlinedButton');
              },
              child: const Text('Outlined Button')),
          TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text("Text Button")),
        ],
      ),
    );
  }
}
