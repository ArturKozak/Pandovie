import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pandovie/kit/ticket_info/info_separator.dart';

class FlexInfoSeparator extends StatelessWidget {
  const FlexInfoSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          4.horizontalSpace,
          const Expanded(
            child: InfoSeparator(),
          ),
          4.horizontalSpace,
        ],
      ),
    );
  }
}
