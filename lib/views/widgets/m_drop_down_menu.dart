import 'package:flutter/material.dart';
import 'package:ims_app/models/dropdown.dart';

class mDropdownMenu extends StatelessWidget {
  final double? width;
  final String? hintText;
  final List<Dropdown> dropdownMenuEntries;
  final ValueChanged? onSelected;
  const mDropdownMenu({super.key, this.width, this.hintText, required this.dropdownMenuEntries, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: width,
      hintText: hintText,
      label: Text(hintText??''),
      dropdownMenuEntries: dropdownMenuEntries.map((e) => DropdownMenuEntry(value: e.value, label: e.label),).toList(),
      onSelected: onSelected,
    );
  }
}
