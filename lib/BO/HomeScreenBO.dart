  // Create a class names HomeScreenBO
class HomeScreenBO {

  // Declare a variable of name imageLocation of type String.
  String imageLocation;

  // Declare a variable of name title of type String.
  String title;

  // Declare a variable of name dateMonthYear of type String.
  String dateMonthYear;

  // Declare a variable of name time of type String.
  String time;

  // Declare a variable of name location of type String.
  String location;

  // Declare a variable of name address of type String.
  String address;

  // Declare a variable of name name of type String.
  String name;

  // Declare a variable of name designation of type String.
  String designation;

  // Declare a variable of name description of type String.
  String description;

  // Declare a variable of name boolMarked of type bool.
  bool bookMarked;

  /* Create a constructor for the class named HomeScreenBO with the named parameter as required. */
  HomeScreenBO(
      {required this.imageLocation,
      required this.title,
      required this.dateMonthYear,
      required this.time,
      required this.location,
      required this.address,
      required this.name,
      required this.designation,
      required this.description,
      required this.bookMarked});
}
