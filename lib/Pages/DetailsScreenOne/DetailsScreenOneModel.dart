import 'dart:async';
import 'package:notifier_app/BO/HomeScreenBO.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:notifier_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
part 'DetailsScreenOneModel.g.dart';
// Create a class with a name DetailsScreenOneModel and assign the class _DetailsScreenOneModelBase with _$DetailsScreenOneModel,NavigationMixin 
class DetailsScreenOneModel = _DetailsScreenOneModelBase with _$DetailsScreenOneModel,NavigationMixin ;

// Declare the  _DetailsScreenOneModelBase as abstract class with a mixin Store.
abstract class _DetailsScreenOneModelBase with Store{

// Create a instance for the HomeScreenBO and initialize values to it.
late HomeScreenBO instance;

}