
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:convert';

// ignore: camel_case_types
class Sales_Screen extends StatefulWidget {
  static const String id = 'result_page';
  
  @override
  State<Sales_Screen> createState() => _Sales_ScreenState();
}


class _Sales_ScreenState extends State<Sales_Screen>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color(0xff4b4b87);

  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Analytics',
        ),
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left:15.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: colorstheme,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300]),
            child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.all(10),
                labelColor: Colors.white,
                unselectedLabelColor: colorstheme,
                labelStyle: TextStyle(fontSize: 20),
                labelPadding:
                    EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                indicator: BoxDecoration(
                    color: colorstheme,
                    borderRadius: BorderRadius.circular(20)),
                controller: _tabController,
                tabs: [
                  Text('Day'),
                  Text('Week'),
                  Text('Month'),
                ]),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController, children: [
              const Text("data"),

            ]),
          ),
          ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                onPressed: (){
                  // getData();
                  readData();
                 
                 
                },
                child: const Text('Read'),),

        ],
      ),
    );
  }
}

readData (){

   CollectionReference newCollection = FirebaseFirestore.instance.collection("Selling");
    final type = newCollection.where('type',isEqualTo:0).get().then((QuerySnapshot snapshot){
      snapshot.docs.forEach((element) {
        // print(element.data());


        dynamic typeElement = element.data();


         print(typeElement);
       
        Map<String, dynamic> types = typeElement;


          int coconut = types['secondNumber'];
          // String studentID = types['studentID'];


          print(coconut);
          // print(studentID);


       




      });
    });




}