import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final String label;
  final String hint;
  final String icon;
  final TextInputType type;
  final int maxLine;
  const CustomTextfield({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    required this.type,
    required this.maxLine,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(widget.label),
        TextFormField(
          decoration: InputDecoration(hintText: widget.hint),
          maxLines: widget.maxLine,
          keyboardType: widget.type,
        ),
      ],
    );
  }
}
