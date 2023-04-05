
import 'package:notifier_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import '../../Helpers/NavigationHelper/Routes.dart';
import 'HomeModel.dart';
import 'package:notifier_app/BO/HomeScreenBO.dart';

// Create a class with a name HomeViewModel which inherits the HomeModel
class HomeViewModel extends HomeModel{

/* Declare a constructor for the class. */
HomeViewModel(){
// Declare the list collections with the values "Sports","Music","Food","Arts"

collections=["Sports","Music","Food","Arts"];

// Declare the list eventDetails and assign the HomeScreen instance.
eventDetails=[
HomeScreenBO(
imageLocation:"lib/Helpers/Resources/Asset/Images/hands.png", 
title:"International Band Music Concert",
dateMonthYear:"14 December, 2021",
time: "Tuesday, 4:00PM - 9:00PM",
location: "Gala Convention Center",
address:"36 Guild Street London, UK",
name: "Ashfak Sayem",
designation:"Organizer",
description:"Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...",
bookMarked: true
),
HomeScreenBO(
imageLocation:"lib/Helpers/Resources/Asset/Images/shoes.png",
title:"Jo Malone London's Moment Concert",
dateMonthYear:"14 December, 2021",
time:"Tuesday, 4:00PM - 9:00PM",
location:"Abz Convention center",
address:"Radius Gallery • Santa Cruz, CA",
name: "Justin bieber",
designation:"Organizer",
description:"Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...",
bookMarked: false
),
];
}

// Create a method with a name navigateToDetailsScreenOne() as void with a named parameter as required with the name index Of type int
  void navigateToDetailsScreenOne({required int index})
 {
  // Add the navigatorPush to the navigationStream
   navigationStream.add(NavigatorPush(

      // Set the pageConfig to push the data to the mentioned screen.
      pageConfig: Pages.detailsScreenOneConfig, data: eventDetails[index]
      ));
 
 }


}