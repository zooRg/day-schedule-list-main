import 'package:day_schedule_list/src/models/schedule_time_of_day.dart';
import 'package:flutter/material.dart';

class TimeOfDayText extends Text {
  TimeOfDayText({
    required TimeOfDay time,
    required BuildContext context,
    TextStyle? timeTextStyle,
    TimeOfDayAvailability availability = TimeOfDayAvailability.available,
    Color? color,
    Key? key,
  }) : super(
          time.format(context),
          style: timeTextStyle ??
              (color != null
                  ? Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: color,
                      )
                  : (availability == TimeOfDayAvailability.available
                      ? Theme.of(context).textTheme.bodySmall
                      : Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey.shade400,
                          ))),
          key: key,
        );
}
