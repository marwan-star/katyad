import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/core/constants/icon_urls.dart';
import 'package:reminder_app/core/theme/app_colors.dart';
import 'package:reminder_app/core/widgets/custom_svg_icon.dart';
import 'package:reminder_app/features/add_reminder/presentation/widgets/custom_textfield.dart';
import 'package:reminder_app/features/add_reminder/presentation/widgets/date_time_textfield.dart';

class AddReminderView extends StatefulWidget {
  const AddReminderView({super.key});

  @override
  State<AddReminderView> createState() => _AddReminderViewState();
}

class _AddReminderViewState extends State<AddReminderView> {
  String selectedRepeat = 'none';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Lets create a new reminder"),
          CustomTextfield(
            label: 'Reminder name',
            hint: "Write your reminder name",
            icon: "",
            type: TextInputType.text,
            maxLine: 1,
          ),
          CustomTextfield(
            label: "Note",
            hint: "Write a note",
            icon: "",
            type: TextInputType.multiline,
            maxLine: 4,
          ),
          DateTimeTextfield(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Repeat"),
              Row(
                spacing: 5,
                children: [
                  ChoiceChip(
                    label: Text("None"),
                    selected: selectedRepeat == 'none',
                    onSelected: (_) => setState(() => selectedRepeat = 'none'),
                  ),
                  ChoiceChip(
                    label: Text("Daily"),
                    selected: selectedRepeat == 'daily',
                    onSelected: (_) => setState(() => selectedRepeat = 'daily'),
                  ),
                  ChoiceChip(
                    label: Text("Weekly"),
                    selected: selectedRepeat == 'weekly',
                    onSelected: (_) =>
                        setState(() => selectedRepeat = 'weekly'),
                  ),
                  ChoiceChip(
                    label: Text("Monthly"),
                    selected: selectedRepeat == 'monthly',
                    onSelected: (_) =>
                        setState(() => selectedRepeat = 'monthly'),
                  ),
                ],
              ),
            ],
          ),
          DropdownMenu(
            width: double.infinity,
            enableFilter: false,
            enableSearch: false,
            requestFocusOnTap: false,
            label: Text('Priority'),
            leadingIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 15,
                height: 15,
                child: CustomSvgIcon(icon: IconUrls.calendar, onTap: () {}),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: AppColors.lightWhite,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              labelStyle: TextStyle(color: AppColors.lightGrey),
              floatingLabelStyle: TextStyle(color: AppColors.purple),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: AppColors.lightGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: AppColors.purple),
              ),
            ),
            menuStyle: MenuStyle(
              elevation: WidgetStatePropertyAll(0),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Colors.black12),
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(AppColors.lightWhite),
            ),
            dropdownMenuEntries: [
              DropdownMenuEntry(value: 'low', label: 'Low'),
              DropdownMenuEntry(value: 'medium', label: 'Medium'),
              DropdownMenuEntry(value: 'high', label: 'High'),
            ],
            onSelected: (value) {},
          ),
          ElevatedButton(onPressed: () {}, child: Text("Add reminder")),
        ],
      ),
    );
  }
}
