import 'package:flutter/material.dart';
import 'package:notifier_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:notifier_app/BO/HomeScreenBO.dart';
import '../../Helpers/NavigationHelper/Routes.dart';
import 'DetailsScreenOneModel.dart';

// Create a class with a name DetailsScreenOneVM which inherits the class DetailsScreenOneModel
class DetailsScreenOneVM extends DetailsScreenOneModel{

/*Declare a constructor for the class with a named parameter of type class with the name as data */
DetailsScreenOneVM({required HomeScreenBO data})
{
 /* Pass the data to the parameter of the method*/
 instance = data;
}
/* Create a method with a name goBackToPreviousScreen() as void*/
 void goBackToPreviousScreen()
 {
  // Add the NavigatopPop to the navigationStream
   navigationStream.add(NavigatorPop());
 }

}