import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitched = false;
  bool? isCheckboxed = false;
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
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                style: ElevatedButton.styleFrom(
                    backgroundColor: isSwitched ? Colors.green : Colors.blue),
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
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('GestureDetector');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text('Some local file department icon'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Switch(
                value: isSwitched,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitched = newBool;
                  });
                }),
            Checkbox(
              value: isCheckboxed,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckboxed = newBool;
                });
              },
            ),
            Image.network(
                'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg'),
          ],
        ),
      ),
    );
  }
}
