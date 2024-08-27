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
  late ComboBox cmbHD, cmbAdmin1, cmbAdmin2;
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
    cmbAdmin1 = ComboBox(
      'בחר מנהל רשת', 
      it, 
      selectedIndex: 4,);
    cmbAdmin2 = ComboBox(
      'בחר מנהל רשת',
       it, 
       selectedIndex: 2,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          const SizedBox(
            height: 40,
          ),
          cmbHD,
          cmbAdmin1,
          cmbAdmin2
        ]),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Fluttertoast.showToast(
                msg: '${cmbHD.selectedValue!} [${cmbHD.selectedIndex}] תמיכה\n'
                    '${cmbIT1.selectedValue!} [${cmbIT1.selectedIndex}] מ.רשת בוקר\n'
                    '${cmbIT2.selectedValue!} [${cmbIT2.selectedIndex}] מ.רשת ערב',
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