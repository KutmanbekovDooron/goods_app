import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool isColor;

  Button(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.isColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          gradient: LinearGradient(
              colors: !isColor
                  ? [Colors.orangeAccent, Colors.orange]
                  : [Colors.greenAccent, Colors.green],
              end: Alignment.centerRight,
              begin: Alignment.centerLeft)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
        ),
        onPressed: () {
          onPressed();
        },
        child: SizedBox(
          width: double.infinity,
          height: 70,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ),
    );
  }
}
