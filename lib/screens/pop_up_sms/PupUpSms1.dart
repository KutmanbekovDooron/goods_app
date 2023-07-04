import 'package:flutter/material.dart';
import 'package:goods_accounting/widgets/button.dart';

class PopUpSma1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: double.maxFinite,
      width: double.maxFinite,
      child: AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 24),
        scrollable: true,
        contentPadding: EdgeInsets.only(bottom: 16, left: 16, right: 8),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.cancel_presentation_rounded))),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Enter the sms code",
                style: TextStyle(fontSize:  19, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "Lorem dolor sit amet consecetur\nadipisising elit set do. ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Resend ",
                          style: TextStyle(fontSize: 16, color: Colors.indigo, fontWeight: FontWeight.w600, decoration: TextDecoration.underline),

                        ),
                      ),
                    ),
                    const TextSpan(text: "30 sec",style: TextStyle(fontSize: 10,color: Colors.indigo, fontWeight: FontWeight.w300))
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text("SMS",
                style: TextStyle(fontSize: 16, color: Colors.indigo, fontWeight: FontWeight.w600),
              ),
              Row(
                children: const [
                  Expanded(
                    child: Card(
                      child: Center(child: Text("1", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Center(child: Text("1", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Center(child: Text("1", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Center(child: Text("1", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Center(child: Text("1", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Center(child: Text("1", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 16.0),
                child: Button(text: "OK", onPressed: (){}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
