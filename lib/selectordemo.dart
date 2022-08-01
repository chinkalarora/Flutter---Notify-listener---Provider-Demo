import 'package:flutter/material.dart';
import 'package:notifylisteners_example/my_model.dart';
import 'package:provider/provider.dart';


class MainSelector extends StatelessWidget {
  const MainSelector({ Key? key, required this.title}) : super(key: key);
  final String title;

/*  @override
  _MainSelectorState createState() => _MainSelectorState();*/

  @override
  Widget build(BuildContext context) {
    MyModel myModel = Provider.of<MyModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Value :${myModel.value}',
            ),
            Selector<MyModel, int>(
              builder: (context, value, child) => Column(
                children: <Widget>[
                  Text(
                    'Incremented Value :$value',
                  ),
                  ElevatedButton(
                    onPressed: () {
                      myModel.changeValue();
                    },
                    child: const Text("Increment"),
                  ),
                ],
              ),
              selector: (buildContext, model) => model.value,
            ),
          ],
        ),
      ),
    );
  }
}
