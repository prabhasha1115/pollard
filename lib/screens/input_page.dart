

import 'package:flutter/material.dart';
import 'package:pollard/components/reusable_card.dart';
import 'package:pollard/constant.dart';


class MultiplicationScreen extends StatefulWidget {
  static const String id = 'input_page';
  @override
  _MultiplicationScreenState createState() => _MultiplicationScreenState();
}


class _MultiplicationScreenState extends State<MultiplicationScreen> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  int _type = 0;
  int _result = 0;


  void _multiplyNumbers() {
    int firstNumber = int.tryParse(_firstNumberController.text) ?? 0;
    int secondNumber = int.tryParse(_secondNumberController.text) ?? 0;


    setState(() {
      _result = firstNumber * secondNumber;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Center(child: Text('Selling')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () { 
                        setState(() {
                          
                        });
                       }, 
                      iconSize: 72,
                      icon: const Icon(Icons.home),
                    
                      ),),
                     Expanded(
                      child: IconButton(
                      onPressed: () { 
                        _type=1;
                       }, 
                      iconSize: 72,
                      icon: const Icon(Icons.water_drop_rounded),

                    
                      ),
                     ),
                      Expanded(child: IconButton(
                      onPressed: () { 
                        _type=2;
                       }, 
                      iconSize: 72,
                      icon: const Icon(Icons.bed),
                    
                      ),), ],),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          colour: kActiveCardColor,
                          cardChild: Column(
                            children: [
                              const Text('Unit Price', style: kTextStyle),
                              Container(
                                child: TextField(
                                  style: kNumberTextStyle,
                                  
                                keyboardType: TextInputType.number,
                                controller: _firstNumberController,
                                decoration: const InputDecoration(
                                
                                labelText: 'Mila',
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          colour: kActiveCardColor,
                          cardChild: Column(
                            children: [
                              const Text('Quantity', style: kTextStyle),
                              Container(
                                child: TextField(
                                  style: kNumberTextStyle,
                                keyboardType: TextInputType.number,
                                controller: _secondNumberController,
                                decoration: const InputDecoration(
                                labelText: 'Quantity',
                                ),
                                ),
                              ),
                            ],
                          ),
                        
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
                'Result: $_result',
                style: kNumberTextStyle,),
          ),

          ElevatedButton(
            
            onPressed: () => {  
              _multiplyNumbers(), 
              
              _firstNumberController.clear(),
              _secondNumberController.clear(),
              
            }, 
            child: const Text('CALCULATE',style: TextStyle(fontSize: 30,color: Colors.white),),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFEB1555),
              shadowColor: Colors.blue,
              

               ),
          ),
        ],
      ),
    );
  }

}
