
import 'package:flutter/material.dart';

import '../utils/device_size.dart';

class SocialContainer extends StatelessWidget {
  const SocialContainer({
    Key? key,required this.link,
  }) : super(key: key);

  final String link;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: getDeviceSize(context).width*0.012),
      width: getDeviceSize(context).width < 329 ? 32 :48,
      height: 48,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Image.asset(link,scale: getDeviceSize(context).width < 329 ? 26 : 17,),
    );
  }
}