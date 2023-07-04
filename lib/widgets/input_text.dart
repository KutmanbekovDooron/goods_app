import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputText extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isNumber;

  const InputText({required this.icon, required this.text, this.isNumber = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20,),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        const SizedBox(height: 10,),
        TextField(
          onChanged: (newValue) {},
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
              prefixIcon: Icon(icon),
              suffixIcon: const Icon(
                Icons.check_box,
                color: Colors.green,
              )),
          keyboardType: isNumber ? TextInputType.number : TextInputType.phone,
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
