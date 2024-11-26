import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tickit/ui/common/const/assets.dart';
import 'package:tickit/ui/ticket/component/custom_date_picker_dialog.dart';
import 'package:tickit/ui/ticket/const/ticket_mode.dart';

import '../../../theme/ticket_typographies.dart';

class CalendarWidget extends StatelessWidget {
  final TicketMode mode;
  final Function(DateTime) onDateChanged;
  final VoidCallback onPressedAmButton;
  final Function(int) onChangedHour;
  final Function(int) onChangedMinute;
  final VoidCallback onPressedCheckButton;
  final String dateTime;
  final Color color;

  const CalendarWidget({
    super.key,
    required this.mode,
    required this.onDateChanged,
    required this.onPressedAmButton,
    required this.onChangedMinute,
    required this.onPressedCheckButton,
    required this.onChangedHour,
    required this.dateTime,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.miniCalendar),
        const SizedBox(
          width: 4.0,
        ),
        TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return CustomDatePickerDialog(
                  mode: mode,
                  onDateChanged: onDateChanged,
                  onPressedAmButton: onPressedAmButton,
                  onChangedHour: onChangedHour,
                  onChangedMinute: onChangedMinute,
                  onPressedCheckButton: onPressedCheckButton,
                );
              },
            );
          },
          style: TextButton.styleFrom(
            textStyle: ticketStyle.copyWith(
              fontSize: 18.0,
            ),
            padding: const EdgeInsets.all(0.0),
            foregroundColor:
                dateTime == "날짜를 선택하세요" ? Theme.of(context).hintColor : color,
          ),
          child: Text(dateTime),
        ),
      ],
    );
  }
}