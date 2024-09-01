import 'package:combo_box/ComboBox.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ComboBox cmbHD, cmbIT1, cmbIT2;
  @override
  void initState() {
    super.initState();
    List<String> hd = [
      'מרום',
      'רומן',
      'ליאור',
      'דב',
      'ניר תור',
    ];
    List<String> it = [
      'יוסי הרשקו',
      'מקסים',
      'ניר חן',
      'יוסי כלפון',
      'טל מרדר'
    ];
    cmbHD = ComboBox(
      'בחר עובד',
      hd,
      selectedIndex: 3,
    );
    cmbIT1 = ComboBox(
      'בחר מנהל רשת', 
      it, 
      selectedIndex: 4,);
    cmbIT2 = ComboBox(
      'בחר מנהל רשת',
       it, 
       selectedIndex: 2,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Card(
                color: const Color.fromARGB(66, 154, 133, 175),
                shadowColor: Colors.white12,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.emoji_people_outlined),
                      title: const Text('      תורן תמיכה בוקר 06:30'),
                      subtitle: cmbHD,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('שלח הודעה'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('עדכן'),
                          onPressed: () {/* ... */},
                        ),
                       // const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Card(
                color: const Color.fromARGB(66, 154, 133, 175),
                shadowColor: Colors.white12,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.emoji_people_outlined),
                      title: const Text('      תורן מ.רשת בוקר 07:30-16:30'),
                      subtitle: cmbIT1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('שלח הודעה'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('עדכן'),
                          onPressed: () {/* ... */},
                        ),
                       // const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Card(
                color: const Color.fromARGB(66, 154, 133, 175),
                shadowColor: Colors.white12,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.emoji_people_outlined),
                      title: const Text('      כונן מ.רשת ערב'),
                      subtitle: cmbIT2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('שלח הודעה'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('עדכן'),
                          onPressed: () {/* ... */},
                        ),
                       // const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        ]),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Fluttertoast.showToast(
                msg: '${cmbHD.selectedValue!} [${cmbHD.selectedIndex}] תמיכה\n'
                    '${cmbIT1.selectedValue!} [${cmbIT1.selectedIndex}] מ.רשת בוקר\n'
                    '${cmbIT2.selectedValue!} [${cmbIT2.selectedIndex}] מ. רשת ערב',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM_LEFT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
          icon: const Icon(Icons.save_as_outlined),
          label: const Text('שמור'),
        ));
  }
}
//comboSelectedValue
//cmbIT1,
//cmbIT2