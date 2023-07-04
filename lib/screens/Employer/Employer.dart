import 'package:flutter/material.dart';
import 'package:goods_accounting/widgets/button.dart';
import 'package:graphic/graphic.dart';

class EmployerScreen extends StatelessWidget {
  EmployerScreen({Key? key}) : super(key: key);
  final data = [
    {'category': 'Shirts', 'sales': 5},
    {'category': 'Cardigans', 'sales': 20},
    {'category': 'Chiffons', 'sales': 36},
    {'category': 'Pants', 'sales': -20},
    {'category': 'Heels', 'sales': 10},
    {'category': 'Socks', 'sales': -20},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.library_add_check), iconSize: 30,color: Colors.green,),
                  const Center(child: Text("Employer", style: TextStyle(fontWeight: FontWeight.w600),),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Button(text: "Open a cash register", onPressed: (){}),
              ),
              Card(
                color: Colors.black26,
                child: SizedBox(width: double.maxFinite,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("amount: 5000", style: Theme.of(context).textTheme.headline1?.copyWith(
                    color: Colors.black
                  ),),
                )),
              ),
              SizedBox(
                height: 500,
                child: Chart(
                  data: data,
                  variables: {
                    'category': Variable(
                      accessor: (Map map) => map['category'] as String,
                    ),
                    'sales': Variable(
                      accessor: (Map map) => map['sales'] as num,
                    ),
                  },
                  elements: [IntervalElement()],
                  axes: [
                    Defaults.horizontalAxis,
                    Defaults.verticalAxis,
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                child: Chart(
                  data: data,
                  variables: {
                    'category': Variable(
                      accessor: (Map map) => map['category'] as String,
                    ),
                    'sales': Variable(
                      accessor: (Map map) => map['sales'] as num,
                    ),
                  },
                  elements: [IntervalElement()],
                  axes: [
                    Defaults.verticalAxis,

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
