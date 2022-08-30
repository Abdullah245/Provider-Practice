import 'package:exp_tracker/model/listtilemodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/expense_provider_model.dart';

class AddToScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("addtoscreen");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
          ),
          TextField(
            controller: emailController,
          ),
          Consumer<ExpenseModel>(
            builder: (BuildContext context, value, Widget? child) {
              return ElevatedButton(
                onPressed: () {
                  value.update(ListTileModel(
                      name: nameController.text, email: emailController.text));
                  Navigator.pop(context);
                },
                child: Text("Add"),
              );
            },
          )
        ],
      )),
    );
  }
}
