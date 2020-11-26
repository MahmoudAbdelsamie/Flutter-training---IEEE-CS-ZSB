import 'dart:io';
void main() {
  var First_Class_Prices,First_Class_Seats,Business_Class_Seats,Business_Class_Prices;
  First_Class_Prices = Business_Class_Prices = First_Class_Seats = Business_Class_Seats = new Map();
  int no_B_Seat,no_FC_Seats;
  no_B_Seat = no_FC_Seats = 1;
  while(true){
    print('Choose What you are \n1) Manager \n2) User : \nto Terminate press 0');
    int ch = int.parse(stdin.readLineSync());
    if(ch == 0) {
      break;
    }
    else if(ch == 1){
      print('Please Enter the Landing Station :');
      String dest = stdin.readLineSync();
      print('Please Enter the First Class Cost :');
      First_Class_Prices[dest] = double.parse(stdin.readLineSync());
      print('Please Enter the Business Class Cost :');
      Business_Class_Prices[dest] = double.parse(stdin.readLineSync());
      print('Please Enter number of seats in the First Class :');
      First_Class_Seats[dest] = int.parse(stdin.readLineSync());
      print('Please Enter number of seats in the Business Class :');
      Business_Class_Seats[dest] = int.parse(stdin.readLineSync());
    }
    else if (ch == 2){
      var dests = First_Class_Seats.keys;
      bool b = false;
      print('------------ Welcome to IEEE Airlines ------------');
      print('Enter your Full Name :');
      String name = stdin.readLineSync();
      print('Please Enter your needed destination : ');
      String inp = stdin.readLineSync();
      print('Please Enter your type of Class\n 1) Business Class\n 2) First Class');
      int cls = int.parse(stdin.readLineSync());
      /*for(int i=0;i<dests.length();++i){
        if(inp == dests[i])
          b = true;*/
      if(cls == 1){
        if(Business_Class_Seats[inp] == 0){
          Business_Class_Seats.remove(inp);
          print('Sorry Business Class is Full.');
          continue;
        }
        else{
          Business_Class_Seats[inp]--;
          print('--------------- Your order has been succeeded ---------------');
          print('--------------------------- Ticket --------------------------');
          print('Your name : $name');
          print('Take-off station : Cairo --> Landing Station : $inp');
          print('your number of seat : $no_B_Seat');
          ++no_B_Seat;
          print('Type of Class : Business Class');
          var pric =  Business_Class_Prices[inp];
          print('Price : $pric');
          print('Best Wishes, IEEE Airlines');
          print('---------------------- Enjoy your trip ----------------------');
        }
      }
      else if(cls == 2){
        if(First_Class_Seats[inp] == 0){
          First_Class_Seats.remove(inp);
          print('Sorry First Class is Full.');
          continue;
        }
        else{
          First_Class_Seats[inp]--;
          print('--------------- Your order has been succeeded ---------------');
          print('--------------------------- Ticket --------------------------');
          print('Your name : $name');
          print('Take-off station : Cairo --> Landing Station : $inp');
          print('your number of seat : $no_FC_Seats');
          ++no_FC_Seats;
          print('Type of Class : First Class');
          var pric =  First_Class_Prices[inp];
          print('Price : $pric');
          print('Best Wishes, IEEE Airlines');
          print('---------------------- Enjoy your trip ----------------------');

        }
      }
    }
  }
}