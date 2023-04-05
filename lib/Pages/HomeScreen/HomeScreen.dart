import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notifier_app/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:notifier_app/Helpers/NavigationHelper/Routes.dart';
import 'package:notifier_app/BO/HomeScreenBO.dart';
import 'package:notifier_app/Pages/HomeScreen/HomeViewModel.dart';
import '../../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

//Create a class with a name HomeScreen which extends StatefulWidget.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
late HomeViewModel _homeViewModel = HomeViewModel();

 /*Declare initState method*/
@override
  void initState()
{
//invoke the initState using the super keyword.
  super.initState();

  //Using the instance access the navigationStream and access the Stream and listen the event
  _homeViewModel.navigationStream.stream.listen((event) { 

    //Check whether the event is NavigatorPush
    if(event is NavigatorPush)
    {
      //Push the context of the event handler to other the screen with the pageconfig and data.
      context.push(pageConfig: Pages.detailsScreenOneConfig, data: event.data);
    }
  });
}

/*Declare dispose method */
@override
void dispose()
{
  //Using the instance _homeViewModel,call the method dispose().
  _homeViewModel.dispose();

  //Using the super keyword call the dispose method.
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Container(
     child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("lib/Helpers/Resources/Asset/Icons/Icons-Menu-Burger.png",color: Colors.white),
          )),
        title: Center(
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Current Location ",style: TextStyle(fontSize: 14,color: Color(0xffA29EF0)),),
                Image.asset("lib/Helpers/Resources/Asset/Icons/down.png")
              ],
            ),
            Text("New York, USA",style: TextStyle(fontSize: 15,color: Colors.white),)
          ],),
        ),
        backgroundColor: Color(0xff4A43EC),
        actions: [CircleAvatar(radius: 20,
        backgroundColor: Color(0xff5D56F3),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("lib/Helpers/Resources/Asset/Icons/Group.png"),
        ) ,),
        SizedBox(width: 20,)],
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 400,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: <Widget> [
                         Align(
                          alignment: Alignment.topCenter,
                           child: Container(
                                height: 80,
                                width:400,
                                decoration: BoxDecoration(color: Color(0xff4A43EC),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
                                child: Column(
                            children: [
                              Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20,),
                                Icon(Icons.search,color: Colors.white,size: 30,),
                                SizedBox(width: 20,),
                                Text("|",style: TextStyle(fontSize: 20,color: Color(0xffA29EF0)),),
                                Text(" Search...",style: TextStyle(fontSize: 18,color: Color(0xffA29EF0)),),
                                SizedBox(width: 100,),
                                Chip(avatar: Image.asset("lib/Helpers/Resources/Asset/Icons/Vector.png"),label: Text("Filter",style: TextStyle(color: Colors.white),),backgroundColor: Color(0xff5D56F3),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),side: BorderSide(color:Color(0xff5D56F3)),)
                              ],
                               ),                  
                            ],
                               ),
                          ),
                         ),
                        Positioned(
                          left: 0,
                          right:0,
                          child: SizedBox(
                              height: 50,
                              width: 300,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder:(context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Chip(
                                     shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                                     side:BorderSide.none,
                              
                                      backgroundColor: _homeViewModel.collections[index]=="Sports"?const Color(0xffF0635A):
                                      _homeViewModel.collections[index]=="Music"?const Color(0xffF59762):
                                       _homeViewModel.collections[index]=="Food"?const Color(0xff29D697):const Color(0xff46CDFB),
                        
                                    label: _homeViewModel.collections[index]=="Sports"?Text(_homeViewModel.collections[index],style: GoogleFonts.lato(color: Colors.white)):
                                    _homeViewModel.collections[index]=="Music"?Text(_homeViewModel.collections[index],style: GoogleFonts.lato(color: Colors.white)):
                                    _homeViewModel.collections[index]=="Food"?Text(_homeViewModel.collections[index],style: GoogleFonts.lato(color: Colors.white)):
                                    Text(_homeViewModel.collections[index],style: GoogleFonts.lato(color: Colors.white)),
                        
                                    avatar: _homeViewModel.collections[index]=="Sports"? const Image(image: AssetImage("lib/Helpers/Resources/Asset/Icons/sports.png"),height:40,width:40):
                                    _homeViewModel.collections[index]=="Music"? const Image(image: AssetImage("lib/Helpers/Resources/Asset/Icons/music.png"),height:40,width:40):
                                    _homeViewModel.collections[index]=="Food"? const Image(image: AssetImage("lib/Helpers/Resources/Asset/Icons/food.png"),height:40,width:40):
                                    const Image(image: AssetImage("lib/Helpers/Resources/Asset/Icons/arts.png"),height:40,width:40)
                                    ),
                                  );
                                },),
                          ),
                        )
                      ],
                      ),
                    ),
                SizedBox(
                 height:10
                  ),
                   Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 25,),
                Text("Upcoming Events",style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width:115),
                Text("See All ",style:TextStyle(fontSize: 12)),
                Image.asset("lib/Helpers/Resources/Asset/Icons/Vector 1.png")
                  ],
                   ),
              SizedBox(
                height: 260,
                width:350,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _homeViewModel.eventDetails.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 20);},
                  itemBuilder: (context, index) {
                    return  Card(
                      color: Colors.white,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () { 
                          _homeViewModel.navigateToDetailsScreenOne(index: index); 
                        },
                        child: 
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Container(
                            height:250,
                            width: 240,
                            child: Column(
                              
                              children: [
                                Stack(children:[
                                  Container(
                                    height: 130,width: 220,
                                    decoration:BoxDecoration(image: DecorationImage(image: 
                                    AssetImage(
                                      _homeViewModel.eventDetails[index].imageLocation)),borderRadius: BorderRadius.circular(15))
                                  ),
                        
                               Positioned(
                                    top:10,
                                    left:8,
                                    child:
                                Container(
                                  height: 45,
                                  width:45,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                  color:Colors.white70,
                                  ),
                                  child:
                                   Column(
                                      children: [
                                        Text("10",style: GoogleFonts.lato(color: Color(0xffF0635A),fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("June",style: GoogleFonts.lato(color: Color(0xffF0635A),fontSize: 13),)
                                      ],
                                    ),
                                  ),
                                ),
                                            
                                   Positioned(
                                    top:10,
                                    right:5,
                                    child: 
                                Container(
                                  height: 30,
                                  width:30,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                  color:Colors.white70),
                                  child:
                                  //Using the instance _homeViewModle check the bookmarked from the list is
                                  // True, if it is true then using the Icon widget consume the icon bookmark
                                  //Else, using the Icon widget consume the icon bookmark_outlined
                                     _homeViewModel.eventDetails[index].bookMarked==true?
                                     Icon(Icons.bookmark,color: Color(0xffF0635A)): Icon(Icons.bookmark_outline,color: Color(0xffF0635A))
                                    ),
                                  ),
                                ]),
                                
                                Container(
                                  child:
                                  Padding(
                                    padding: const EdgeInsets.only(left:10),
                                    child: Column(
                                      children: [
                                   Container
                                  (
                                    height: 25,width: 240,
                                    child: 
                                    //Declare a Text Widget, Using the instance consume the title from the list eventDetails.
                                    Text(_homeViewModel.eventDetails[index].title,style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,)),
                                    SizedBox(
                                    height:10
                                    ),
                                    Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Image.asset("lib/Helpers/Resources/Asset/Images/woman.png")
                                      ),
                                      SizedBox(
                                      width:5
                                    ),
                                    CircleAvatar(
                                      radius:20,
                                      child: Image.asset("lib/Helpers/Resources/Asset/Images/man.png")),
                                       SizedBox(
                                      width:5
                                    ),
                                    Text("+ 20 Going",style: GoogleFonts.lato(color: Color(0xff3F38DD)),),
                                    SizedBox(
                                    width:70
                                       ),
                                       ],),
                                     SizedBox(
                                    height:10
                                      ),
                                    Row(
                                    children: [
                                    Icon(Icons.location_on,color:Color(0xff716E90)),
                                   //Declare a text widget, by using the instance consume the value from the list
                                   //EventDetails, for the data address.
                                    Text(_homeViewModel.eventDetails[index].address,style: TextStyle(color: Color(0xff716E90)),),
                                    
                                      ],),
                                      ]
                                    ),
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  color: Color.fromARGB(255, 211, 251, 253),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Stack(
                      children: [Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Invite Your Friends",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            SizedBox(
                             height: 10,
                              ),
                            Text("Get \$20 for ticket",style: GoogleFonts.lato(fontSize: 13),),
                            SizedBox(
                            height: 10,
                              ),
                            Container( 
                              height: 32,
                              width:72,
                            child: Center(child: Text("INVITE",style: GoogleFonts.lato(color: Colors.white,fontSize: 13),)),decoration:BoxDecoration(color:(Color(0xff00F8FF)),borderRadius: BorderRadius.circular(10)))
                          ],
                        ),
                        
                        Positioned(
                          bottom: 1,
                          right:1,
                          child: Image.asset("lib/Helpers/Resources/Asset/Images/gift.png",height: 120,width: 170)),
                      ]),]
                    ),
                  ),
                ),
              ),
                  ]
                ) 
              
                ),
            ],
          ),
        )
          
        
      );
      
    
    
  }
}