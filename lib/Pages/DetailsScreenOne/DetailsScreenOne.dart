import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notifier_app/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:notifier_app/BO/HomeScreenBO.dart';
import '../../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'DetailsScreenOneVM.dart';

// Create a class with a name DetailsScreenOne which extends StatefulWidget 
class DetailsScreenOne extends StatefulWidget {

  // Declare a variable named data of type class HomeScreenBO
  final HomeScreenBO data;

  // Call the constructor of the class and pass the value of data as required.
  const DetailsScreenOne({super.key, required this.data});

  @override
  State<DetailsScreenOne> createState() => _DetailsScreenOneState();
}

class _DetailsScreenOneState extends State<DetailsScreenOne> {
// Create the instance for the class DetailsScreenOneVM with the name _detailsScreenOneVM and pass the data in the constructor of the class.

late final DetailsScreenOneVM _detailsScreenOneVM = DetailsScreenOneVM(data: widget.data);
/* Declare a initState()*/
@override
void initState()
{
  //invoke the initState using the super keyword.
  super.initState();

  // Using the instance access the navigationStream and access the Stream and listen the event
  _detailsScreenOneVM.navigationStream.stream.listen((event) { 

    // Check whether the event is Navigatorpop
    if(event is NavigatorPop)
    {
      // Pop the context
      context.pop();
    }
  });
}

/* Declare dispose method */
@override
void dispose()
{
  // Using the instance _detailsScreenOneVM, access the instance of the navigationStream triger close method.
  _detailsScreenOneVM.dispose();

  // Using the super keyword call the dispose method.
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(onPressed:(){
          _detailsScreenOneVM.goBackToPreviousScreen();
        },child: Icon(Icons.arrow_back)),
        title: Text("Event Details",style:GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [Padding(
          padding: const EdgeInsets.only(right:10),

           // Using the instance check whether the value of the variable bookMarked is true, if the value is true,Consume the icon bookmark using the Icon widget or consume the icon bookmark_Outlined using the Icon widget
          child: _detailsScreenOneVM.instance.bookMarked==true?Icon(Icons.bookmark,color: Colors.black): Icon(Icons.bookmark_outline,color: Colors.black),),
        SizedBox(width:10)],
      ),
      body: Center(
        child: Stack(
          children: [
            ListView(
              children: [
                Image.asset("lib/Helpers/Resources/Asset/Images/concert.png"),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                // Declare a Text Widget, Using the instance consume the title from the list eventDetails.
                  Text(_detailsScreenOneVM.instance.title,style: GoogleFonts.lato(fontSize: 30,letterSpacing: 1,fontWeight: FontWeight.w500)),
                  SizedBox(
                    height:15
                  ),
                  Row(
                    children: [
                      Container(
                        height: 65,
                        width:65,
                        decoration: BoxDecoration(color: Color.fromARGB(255, 225, 224, 243),borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Image.asset("lib/Helpers/Resources/Asset/Icons/date.png",height: 30,width: 30,),
                        ),
                      ),
                      SizedBox(
                        width:8
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                       // Declare a Text Widget,CreateUsing the instance consume the dataMonthYear from the list eventDetails.
                        Text(_detailsScreenOneVM.instance.dateMonthYear,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 16),),
                         SizedBox(
                    height:10
                  ),

                   // Declare a Text Widget,Using the instance consume the time from the list eventDetails.
                        Text(_detailsScreenOneVM.instance.time,style: GoogleFonts.lato(color: Color(0xff747688)))
                      ],)
                    ],
                  ),
                   SizedBox(
                    height:25
                  ),
                   Row(
                    children: [
                      Container(
                        height: 65,
                        width:65,
                        decoration: BoxDecoration(color: Color.fromARGB(255, 215, 213, 238),borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Image.asset("lib/Helpers/Resources/Asset/Icons/location.png",height: 30,width: 30,),
                        ),
                      ),
                      SizedBox(
                        width:8
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                     // Declare a Text Widget,Using the instance consume the location from the list eventDetails.
                        Text(_detailsScreenOneVM.instance.location,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 16),),
                           SizedBox(
                    height:10
                  ),

                      //Declare a Text Widget,Using the instance consume the address from the list eventDetails.
                        Text(_detailsScreenOneVM.instance.address,style: GoogleFonts.lato(color: Color(0xff747688)))
                      ],)
                    ],
                  ),
                   SizedBox(
                    height:25
                  ),
                   Row(
                    children: [
                      Container(
                        height: 65,
                        width:65,
                        decoration: BoxDecoration(color: Color.fromARGB(255, 230, 229, 244),borderRadius: BorderRadius.circular(25)),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage("lib/Helpers/Resources/Asset/Images/orange.png"))
                          ),
                      ),
                      ),
                      SizedBox(
                        width:8
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       //Declare a Text Widget,Using the instance consume the name from the list eventDetails.
                        Text(_detailsScreenOneVM.instance.name,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 16),),

                         //Declare a Text Widget,Using the instance consume the designation from the list eventDetails.
                        Text(_detailsScreenOneVM.instance.designation,style: GoogleFonts.lato(color: Color(0xff747688)))
                      ],),
                      SizedBox(width:55),
                      ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 215, 213, 238))), child: Text("Follow",style: GoogleFonts.lato(color: Color(0xff5669FF)),))
                    ],
                  ),
                  SizedBox(
                    height: 15
                  ),
                  Text("About Event",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 19),),
                  SizedBox(height: 10,),

                   //Declare a Text Widget,Using the instance consume the description from the list eventDetails.
                  Text(_detailsScreenOneVM.instance.description,style: GoogleFonts.lato(fontSize: 18),)
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 25,
              right: 40,
              left: 40,
              child: FloatingActionButton.extended(onPressed: (){}, 
              backgroundColor: Color(0xff5669FF),
              label:
               Row(
                 children: [
                   SizedBox(width:70),
                   Text("BUY TICKET \$120",style: GoogleFonts.lato(color: Colors.white,fontSize: 16),),
                   SizedBox(width:30),
                     CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xff3D56F0),
                child: Center(
                  child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Icon(Icons.arrow_forward,color: Colors.white,),
                              ),
                ),)
                 ],
               ),
               
             )
              
              ),
             
          ],
        ),
      ),
    );
  }
}