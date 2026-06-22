import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/core/theme/app_colors.dart';

class DateTimeTextfield extends StatefulWidget {
  const DateTimeTextfield({super.key});

  @override
  State<DateTimeTextfield> createState() => _DateTimeTextfieldState();
}

class _DateTimeTextfieldState extends State<DateTimeTextfield> {
  DateTime selectedDate = DateTime.now();
  DateTime selectedTime = DateTime.now();

  void _showDatePicker(BuildContext context) {
    DateTime tempDate = selectedDate;
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => _buildSheet(
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.date,
          initialDateTime: selectedDate,
          onDateTimeChanged: (val) => tempDate = val,
        ),
        onDone: () {
          setState(() => selectedDate = tempDate);
          Navigator.pop(context);
        },
        title: "Select Date",
      ),
    );
  }

  void _showTimePicker(BuildContext context) {
    DateTime tempTime = selectedTime;
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => _buildSheet(
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.time,
          initialDateTime: selectedTime,
          onDateTimeChanged: (val) => tempTime = val,
        ),
        onDone: () {
          setState(() => selectedTime = tempTime);
          Navigator.pop(context);
        },
        title: "Select Time",
      ),
    );
  }

  Widget _buildSheet({
    required Widget child,
    required VoidCallback onDone,
    required String title,
  }) {
    return SizedBox(
      height: 320,
      child: Column(
        children: [
          // drag handle
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 4),
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          // header row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.close, size: 20, color: Colors.grey[600]),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: onDone,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(child: child),
        ],
      ),
    );
  }

  String get formattedDate =>
      "${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}";

  String get formattedTime =>
      "${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}";

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => _showDatePicker(context),
            child: AbsorbPointer(
              child: TextFormField(
                decoration: InputDecoration(labelText: "Date"),
                controller: TextEditingController(text: formattedDate),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => _showTimePicker(context),
            child: AbsorbPointer(
              child: TextFormField(
                decoration: InputDecoration(labelText: "Time"),
                controller: TextEditingController(text: formattedTime),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
