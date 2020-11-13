import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  //Variable to know if "French Press" was pressed
  bool frenchPressSelected = false;
  //Variable to know if "Drip Machine" was pressed
  bool dripMachineSelected = false;
  //Variable that holds how the coffee will be made
  String typeOfCoffee;
  //Variable that holds the coffee that will be recommended
  String recommendedCoffee;
  //Variable that holds the total amount of water needed
  double coffeeWaterResult;
  //Variable that holds the total amount of coffee needed
  double coffeeAmountResult;
  //Variable that holds the user's input for cups
  int cupsNumber;

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "What coffee maker are you using?",
                key: Key('coffee-maker-question'),
                style: TextStyle(
                  color: Color(0xFF4C748B),
                  fontSize: 20,
                ),
              ),
            ),
            //Container for the shape of the checkboxes
            Container(
              margin: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFF4C748B),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(children: [
                //Checkbox for picking the French Press
                CheckboxListTile(
                  key: Key('french-press-option'),
                  activeColor: Colors.white,
                  checkColor: Color(0xFF4C748B),
                  title: Text(
                    "French Press",
                    style: TextStyle(
                      color: Color(0xFF4C748B),
                      fontSize: 19,
                    ),
                  ),
                  //boolean used for toggling
                  value: widget.frenchPressSelected,
                  //When using class: value: widget.coffee.frenchPressSelected,
                  onChanged: (value) {
                    widget.dripMachineSelected = false;
                    //Assign typeOfCoffee
                    widget.typeOfCoffee = 'French Press';
                    //Assign recommendedCoffee
                    widget.recommendedCoffee = 'course ground coffee';
                    //Toggle state
                    widget.frenchPressSelected = value;
                    //Save state
                    setState(() {});
                  },
                ),
                //Divider for dividing the checkboxes
                Divider(
                  color: Color(0xFF4C748B),
                  height: 0.1,
                  thickness: 2,
                ),
                //Checkbox for picking the Drip Machine
                CheckboxListTile(
                  key: Key('drip-machine-option'),
                  activeColor: Colors.white,
                  checkColor: Color(0xFF4C748B),
                  title: Text(
                    "Drip Machine",
                    key: Key('drip-machine-2'),
                    style: TextStyle(
                      color: Color(0xFF4C748B),
                      fontSize: 19,
                    ),
                  ),
                  //boolean used for toggling
                  value: widget.dripMachineSelected,
                  onChanged: (value) {
                    widget.frenchPressSelected = false;
                    //Assign typeOfCoffee
                    widget.typeOfCoffee = 'Drip Machine';
                    //Assign recommendedCoffee
                    widget.recommendedCoffee = 'medium ground coffee';
                    //Toggle state
                    widget.dripMachineSelected = value;
                    //Save state
                    setState(() {});
                  },
                ),
              ]),
            ),
            //SizedBox for the shape of the RaisedButton
            SizedBox(
              width: 300,
              height: 52,
              //RaisedButton that implements the 'Continue' functionality
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Color(0xFF4C748B),
                key: Key('continue-button'),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                onPressed:
                    widget.frenchPressSelected || widget.dripMachineSelected
                        ? () {
                            /*//Visit the CupsScreen
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                //Pass the variables to the other screen
                                builder: (context) => CupsScreen(
                                      typeOfCoffee: '${widget.typeOfCoffee}',
                                      recommendedCoffee:
                                          '${widget.recommendedCoffee}',
                                    )));*/
                          }
                        : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
