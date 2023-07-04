import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goods_accounting/screens/auth/Register.dart';
import 'package:goods_accounting/widgets/auth/AuthScaffold.dart';
import 'package:goods_accounting/widgets/button.dart';
import 'package:goods_accounting/widgets/input_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
        child: Column(
      children: [
        const SizedBox(
        height: 50,
        ),
        Text(
          "SAVECASH",
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Login",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10,),
        const Text(
          "Welcome to Lotto Please fill in your details",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
        const InputText(icon: Icons.phone, text: "Phone", isNumber: true,),
        Button(
          onPressed: () {},
          text: "Login",
        ),
        const SizedBox(height: 20,),
        const Divider(
          endIndent: 130,
          indent: 130,
          thickness: 1,
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () {

              },
              shape: const CircleBorder(),
              child: const Icon(Icons.facebook, size: 70,),
            ),
            MaterialButton(
              onPressed: () {

              },
              shape: const CircleBorder(),
              child: const Icon(Icons.facebook, size: 70,),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
            text: TextSpan(text: "Don't you have an account? ",style: const TextStyle(color: Colors.black), children: [
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => const RegisterScreen()));
              },
              child: const Text(
                "Registration",
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline),
              ),
            ),
          )
        ]))
      ],
    ));
  }
}
