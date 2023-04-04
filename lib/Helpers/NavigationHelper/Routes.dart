
import '../../Pages/HomeScreen/HomeScreen.dart';
import '../../Pages/DetailsScreenOne/DetailsScreenOne.dart';
import 'NavigationHelper.dart';

//Declare a enum with a name Routes and assign HomeScreen and DetailsScreenOne as constants
enum Routes {
  HomeScreen,
  DetailsScreenOne,
}

//Decalre a class named Pages
class Pages {
  
  //Declare a variable with the name data of the type Object
  Object? data;
 
 //Create a instance for PageConfig for the page HomeScreen as homeScreenConfig.
  static final PageConfig homeScreenConfig = PageConfig(

    //Assign the route for the HomeScreen as Routes.HomeScreen
    route: Routes.HomeScreen, 

    //Assign the build for the HomeScreen()
    build: (_)=> HomeScreen(),
    );

 //Create a instance for PageConfig for the page DetailsScreenOne as detailsScreenOneConfig.
  static final PageConfig detailsScreenOneConfig = PageConfig(

    //Assign the route for the HomeScreen as Routes.DetailsScreenOne
    route: Routes.DetailsScreenOne,

    //Assign the build for the DetailsScreenOne.
     build: (_)=> DetailsScreenOne(data: detailsScreenOneConfig.data),
    );
  
   
}
