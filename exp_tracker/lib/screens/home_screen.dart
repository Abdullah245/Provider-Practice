import 'package:exp_tracker/screens/add_to_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/expense_provider_model.dart';
import '../widgets/single_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("home");

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(children: [
          Consumer<ExpenseModel>(
            builder: (BuildContext context, value, Widget? child) {
              return Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) => SingleItem(
                      title: value.data?[index].name ?? '',
                      subtitle: value.data?[index].email ?? '')),
                  itemCount: value.data?.length ?? 0,
                ),
              );
            },
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => AddToScreen())));
        },
        child: Text("Add New Entry"),
      ),
    );
  }
}
