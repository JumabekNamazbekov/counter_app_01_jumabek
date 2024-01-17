import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    backgroundColor: Colors.grey,
    appBar: AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
    title: const Text("Counter app"),
    ),
body: const Center(child: Counter()),
    ),
),
);

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$count",style: const TextStyle(
          fontSize: 120,
          fontWeight: FontWeight.bold,
        ),
        ),
         const SizedBox(height: 40,
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           FloatingActionButton.extended(
            onPressed: (){
              setState(() {
                count=0;
              });
            },
             label: const Text ("arkaga"),
             icon: const Icon(Icons.refresh,
             color: Colors.blue,
             ),
            ),

            const SizedBox(width: 40,
            ),

             FloatingActionButton.extended(
            onPressed: (){
              setState(() {
                count=count+1;
              });
            },
             label: const Text ("koshuu"),
             icon: const Icon(Icons.add,
             color: Colors.blue,
             ),
            ),
          ],
        ),
      ],
    );
  }
}