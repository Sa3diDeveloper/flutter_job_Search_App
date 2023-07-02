import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Row appBar(Function() fun) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: fun,
        child: Container(
          width: 37,
          height: 37,
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 170, 170, 170)),
              borderRadius: BorderRadius.circular(6)),
          child: Center(child: SvgPicture.asset('assets/ellipsis.svg')),
        ),
      ),
      const CircleAvatar(
        backgroundImage: AssetImage('assets/pro.jpg'),
      )
    ],
  );
}
