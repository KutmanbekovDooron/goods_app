import 'package:flutter/material.dart';
import 'package:goods_accounting/widgets/auth/AuthScaffold.dart';
import 'package:goods_accounting/widgets/button.dart';
import 'package:goods_accounting/widgets/pay_package/SlideCard.dart';

class PayPackage extends StatelessWidget {
  const PayPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
        child: Column(
      children: [
        Row(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.zero,
              shape: const CircleBorder(),
              color: Colors.white38,
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 10,
              ),
            ),
            Center(
              child: Text(
                "Pay package",
                style: Theme.of(context).textTheme.headline3,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        SlideCard(),
        const SizedBox(
          height: 100,
        ),
        Button(text: "14 day FREE", onPressed: () {}),
        TextButton(
          onPressed: () {},
          child: const Text(
            "LOGIN",
            style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline),
          ),
        )
      ],
    ));
  }
}
