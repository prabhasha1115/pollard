import 'package:flutter/material.dart';
import '../constant.dart';

class TextFieldNumeric extends StatelessWidget {
 


 
  final number = TextEditingController();

  TextFieldNumeric(number);
 
  @override
  Widget build(BuildContext context) {
    return TextField(
                  controller: number,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: 'Ekak'),
                  style: kNumberTextStyle,
                );
              

            
        
  
  }
}

