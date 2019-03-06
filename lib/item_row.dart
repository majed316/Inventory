import 'package:flutter/material.dart';
import 'data.dart';

class _ItemRowState extends State<ItemRow> {
  int _counter = 0;
  //call save from database class to persiste data in database
  void _incrementCounter() {
    setState(() {
      _counter = ++this.widget.item.consumed;
      this.widget.item.consumed =_counter;
    });
  }

  //call save from database class to persiste data in database
  void _decrementCounter() {
    setState(() {
      if (this.widget.item.consumed != 0)
      _counter = --this.widget.item.consumed;
      this.widget.item.consumed =_counter;
    });
  }

  Widget build(BuildContext context) {
    _counter = this.widget.item.consumed;
    return Column(
      children: <Widget>[
        Text(this.widget.item.title),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(children: <Widget>[
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'decrement',
                child: Icon(Icons.remove),
              ),
              //Text("")
            ]),
            Column(
              children: <Widget>[
                Image.asset("assets/images/" + this.widget.item.image_path,
                    width: 120.0, height: 120.0, scale: 3.0),
                Text("$_counter", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Column(
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
                //Text("")
              ],
            )
          ],
        ),
      ],
    );
  }
}

//pass image path, Servings, Consumed, and item's database id
class ItemRow extends StatefulWidget {
  ItemRow({Key key, this.item}) : super(key: key);
  final Item item;
  @override
  _ItemRowState createState() => _ItemRowState();
}
