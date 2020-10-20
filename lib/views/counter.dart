import 'package:counter_app/models/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ScopedModel<CounterModel>(
        model: CounterModel(),
        child: Column(
          children: [
            Center(
              child: ScopedModelDescendant<CounterModel>(
                builder: (context, child, model) => Text('${model.counter}'),
              ),
            ),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) => RaisedButton(
                onPressed: model.increment,
                child: Text('count up'),
              ),
            ),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) => RaisedButton(
                onPressed: model.decrement,
                child: Text('count down'),
              ),
            ),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) => RaisedButton(
                onPressed: model.reset,
                child: Text('reset'),
              ),
            )
          ],
        ),
      );
}
