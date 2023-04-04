import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:notifier_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:notifier_app/BO/HomeScreenBO.dart';
part 'HomeModel.g.dart';

//Create a class with a name HomeModel and assign the class _HomeModelBase with _$DetailsScreenOneModel,NavigationMixin 
class HomeModel = _HomeModelBase with _$HomeModel,NavigationMixin ;

//Declare the  _HomeModelBase as abstract class with a mixin Store.
abstract class _HomeModelBase with Store{

//Create a list with a name eventdetails of type class HomeScreenBO
List<HomeScreenBO>eventDetails =[];

//Create a list with a name collections of type String
List<String>collections=[];
}
