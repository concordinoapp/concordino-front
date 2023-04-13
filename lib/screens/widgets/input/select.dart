import 'package:concordino_front/core/model/cave_model.dart';
import 'package:flutter/material.dart';

class SelectCustom extends StatefulWidget {
  final List<String> list;
  final List<Cave> listCaves;
  final Function(String) caveSetter;
  const SelectCustom(
      {Key? key,
      required this.list,
      required this.listCaves,
      required this.caveSetter,
      required this.backgroundColor})
      : super(key: key);
  final Color backgroundColor;

  @override
  State<SelectCustom> createState() => _SelectCustomState();
}

class _SelectCustomState extends State<SelectCustom> {
  String dropdownValue = "";

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.list.first;
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(11),
          border: Border.all(color: Colors.black38, width: 1),
        ),
        child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 3, bottom: 3),
            child: DropdownButton<String>(
              icon: const Padding(
                  padding: EdgeInsets.only(left: 130),
                  child: Icon(Icons.arrow_downward)),
              value: dropdownValue,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: const Color.fromARGB(255, 107, 23, 81),
              ),
              onChanged: (String? value) {
                widget.caveSetter(value!);
              },
              items: widget.list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )));
  }
}
