import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerbasics/home.dart';
import 'package:providerbasics/provider.dart';

class Second extends StatefulWidget {
  const Second({Key? key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
   

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (context, numbersListProvider, child) =>  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         numbersListProvider.add();
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      appBar: AppBar(),
      body: 
         SizedBox(
          child: Column(
            children: [
              Text(
               numbersListProvider.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbersListProvider.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbersListProvider.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
                   (context) => Home(),)); // Here is the change
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
