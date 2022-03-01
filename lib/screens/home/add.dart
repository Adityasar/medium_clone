import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Add extends HookWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _text = useState('');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Publish',
              style: TextStyle(color: Colors.greenAccent[400], fontSize: 20),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              cursorHeight: 30,
              cursorColor: Colors.greenAccent[400],
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.visiblePassword,
              onChanged: (val) {
                _text.value = val;
              },
            ),
            Text(_text.value)
          ],
        ),
      ),
    );
  }
}
