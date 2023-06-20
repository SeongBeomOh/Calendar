import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {

  final DateTime? selectedDay;
  final DateTime focusedDay;
  final OnDaySelected? onDaySelected;

  const Calendar({
    required this.selectedDay,
    required this.focusedDay,
    required this.onDaySelected,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'ko_KR',
      focusedDay: focusedDay,
      firstDay:DateTime(1800),
      lastDay:DateTime(2500),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
      ),
      onDaySelected: onDaySelected,
      selectedDayPredicate: (date){
        if(selectedDay == null){
          return false;
        }
        return date.year == selectedDay!.year &&
            date.month == selectedDay!.month &&
            date.day == selectedDay!.day;
      },
    );
  }
}
