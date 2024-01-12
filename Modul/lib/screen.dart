import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController textfield = TextEditingController();
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Testing"),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "COUNTER",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value--;
                      });
                    },
                    child: Text(
                      "Dec",
                      key: Key("btnDec"),
                    )),
                Text(
                  "${value}",
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value++;
                      });
                    },
                    child: Text(
                      "Inc",
                      key: Key("btnInc"),
                    ))
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "REVERSE TEXT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            TextField(
              controller: textfield,
              decoration: InputDecoration(
                  hintText: "Enter Text", border: OutlineInputBorder()),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      textfield.text = String.fromCharCodes(
                          textfield.text.runes.toList().reversed);
                    });
                  },
                  child: Text(
                    "Reverse",
                    key: Key("btnReverse"),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
