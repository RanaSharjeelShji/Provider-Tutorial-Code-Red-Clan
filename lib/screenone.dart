import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertutorial/countProvider.dart';
import 'package:providertutorial/screenTwo.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    MyModel myModel = Provider.of<MyModel>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myModel.increaseValue();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("screen one"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              myModel.counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenTwo(),
                      ));
                },
                child: const Text("Next Screen"))
          ],
        ),
      ),
    );
  }
}
// Class ka name ko variale type rkho gaay. aur provider k through usko get kro gaay bilkul scaffold k oper
// user ka jo variable ka name rkha tha osko use name.(any thing from your class function or variable)
