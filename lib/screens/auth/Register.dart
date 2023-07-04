import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goods_accounting/screens/pay_package/PayPakage.dart';
import 'package:goods_accounting/widgets/auth/AuthScaffold.dart';
import 'package:goods_accounting/widgets/button.dart';
import 'package:goods_accounting/widgets/input_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: MaterialButton(
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
          ),
          const SizedBox(height: 20,),
          Text("Registration",style: Theme.of(context).textTheme.headline1,),
          const SizedBox(height: 20,),
          const InputText(icon: Icons.person, text: "Full Name"),
          const InputText(icon: Icons.person, text: "Email"),
          const InputText(icon: Icons.person, text: "Phone Number", isNumber: true),
          const ListTile(
            visualDensity: VisualDensity.compact,
            leading: Icon(Icons.check_circle_rounded, color: Colors.indigo,),
            title: Text("Terms&Conditions / Privacy"),
            minLeadingWidth: 0,
            contentPadding: EdgeInsets.zero,
          ),
          const SizedBox(height: 40,),
          Button(text: "NEXT", onPressed: (){
            Navigator.push(context, CupertinoPageRoute(builder: (_) => const PayPackage()));
          })
        ],
      ),
    );
  }
}
