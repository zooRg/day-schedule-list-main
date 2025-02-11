import 'package:flutter/material.dart';

import '../../time_of_day_text.dart';

enum Kind { start, end }

class AppointmentTimeOfDayIndicatorWidget extends StatelessWidget {
  const AppointmentTimeOfDayIndicatorWidget.start({
    required this.time,
    required this.timeIndicatorsInset,
    super.key,
  }) : kind = Kind.start;

  const AppointmentTimeOfDayIndicatorWidget.end({
    required this.time,
    required this.timeIndicatorsInset,
    super.key,
  }) : kind = Kind.end;

  final TimeOfDay time;
  final double timeIndicatorsInset;
  final Kind kind;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kind == Kind.start ? -1.0 * timeIndicatorsInset : null,
      bottom: kind == Kind.end ? -1.0 * timeIndicatorsInset : null,
      left: 0,
      child: TimeOfDayText(
        time: time,
        context: context,
        color: Colors.red,
      ),
    );
  }
}
