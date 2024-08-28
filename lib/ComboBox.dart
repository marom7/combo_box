// ignore_for_file: must_be_immutable,file_names
import 'package:flutter/material.dart';

class ComboBox extends StatefulWidget {
  ComboBox(
      //super.key,
      //this.color = const Color(0xFFFFE306),
      //this.child,
      this.hint,
      this.items,
      {super.key,
      this.selectedIndex = -1});

  //Color color;
  int? selectedIndex;
  String? selectedValue;
  String? hint;
  List<String>? items;

  @override
  State<ComboBox> createState() => _ComboBox();
}

class _ComboBox extends State<ComboBox> {
  @override
  void initState() {
    super.initState();
    if(widget.selectedIndex! >-1) {
      widget.selectedValue = widget.items!.elementAt(widget.selectedIndex!);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButton<String>(
                    hint: Center(
                      child:
                          Text(widget.hint!, textDirection: TextDirection.rtl),
                    ),
                    value: widget.selectedValue,
                    isExpanded: true,
                    underline: const SizedBox(),
                    borderRadius: BorderRadius.circular(10),
                    dropdownColor: Colors.blue[200],
                    items: widget.items!.map((String item) {
                      return DropdownMenuItem<String>(
                          value: item,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(item, textDirection: TextDirection.rtl),
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        widget.selectedValue = newValue!;
                        widget.selectedIndex = widget.items!.indexOf(newValue);
                      });
                    }))));
  }
}
