import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                label: Text('Título'),
              ),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                label: Text('Valor (R\$)'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text(
                    'Nova Trasanção',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onPressed: () {
                    print(titleController.text);
                    print(valueController.text);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
