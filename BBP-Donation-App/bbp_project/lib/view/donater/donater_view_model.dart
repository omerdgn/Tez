import 'package:bbp_project/view/donater/model/donater_db_provider.dart';
import 'package:bbp_project/view/donater/model/donater_model.dart';
import 'package:flutter/material.dart';

import './donater.dart';

abstract class DonaterViewModel extends State<Donater> {
  DonaterDbProvider donaterDbProvider = DonaterDbProvider();
  DonaterModel donaterModel = DonaterModel();

  @override
  void initState() {
    super.initState();
    donaterDbProvider.open();
  }
}
