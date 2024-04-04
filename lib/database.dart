import 'package:hive_flutter/hive_flutter.dart';

class StashDatabase{
  List StashList = [];
  
  final _myBox = Hive.box('TestBox');

  void updateDatabase(){
    _myBox.put("STASHLIST", StashList);
  }

  void loadData(){
    if (_myBox.get('STASHLIST') != null){
      StashList = _myBox.get('STASHLIST');
    }
  }
}