import 'package:exp_tracker/model/listtilemodel.dart';
import 'package:flutter/cupertino.dart';

class ExpenseModel extends ChangeNotifier {
  List<ListTileModel> data = [];
  update(ListTileModel newEntry) {
    data!.add(newEntry);
    notifyListeners();
  }
}
