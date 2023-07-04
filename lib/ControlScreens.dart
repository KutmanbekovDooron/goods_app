import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goods_accounting/screens/Employer/Employer.dart';
import 'package:goods_accounting/screens/auth/Login.dart';
import 'package:goods_accounting/screens/auth/Register.dart';
import 'package:goods_accounting/screens/pay_package/PayPakage.dart';
import 'package:goods_accounting/screens/pop_up_sms/PupUpSms1.dart';

class ControlScreens extends StatelessWidget {
  const ControlScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screens"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(height:100,child: Card(child: InkWell(onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => const LoginScreen()));
                },child: const Text("1 screen")))),
              ),
              Expanded(
                child: SizedBox(height:100,child: Card(child: InkWell(onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => const RegisterScreen()));
                },child: const Text("2 screen")))),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(height:100,child: Card(child: InkWell(onTap: (){

                  showDialog(context: context, builder: (_) => PopUpSma1());
                },child: const Text("3 screen")))),
              ),
              Expanded(
                child: SizedBox(height:100,child: Card(child: InkWell(onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => const PayPackage()));
                },child: const Text("4 screen")))),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(height:100,child: Card(child: InkWell(onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => EmployerScreen()));
                },child: const Text("5 screen")))),
              ),
              Expanded(
                child: SizedBox(height:100,child: Card(child: InkWell(onTap: (){
                },child: const Text("6 screen")))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
