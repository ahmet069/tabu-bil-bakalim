import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/mobx/counter.dart';

class GameButton extends StatefulWidget {
  final int order;
  const GameButton({super.key, required this.order});

  @override
  State<GameButton> createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    final h = size.height / 100;
    final counter = Provider.of<Counter>(context);
    return Container(
        height: 10 * h,
        child: Observer(
          builder: (_) => Row(
            children: [
              Container(
                height: 100,
                width: 35 * w,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.red),
                  ),
                  onPressed: () {
                    counter.increment_tabu();
                    counter.setScore1(widget.order);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(counter.tabu_.toString()),
                      Text(
                        "tabu",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 30 * w,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.yellow),
                  ),
                  onPressed: () {
                    if (counter.pas_ > 0) {
                      counter.decrement_pas();
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        counter.pas_.toString(),
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "pas",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 35 * w,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.green),
                  ),
                  onPressed: () {
                    counter.increment_true(text: 'ahmet');
                    counter.setScore1(widget.order);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(counter.true_.toString()),
                      Text(
                        "Doğru",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
