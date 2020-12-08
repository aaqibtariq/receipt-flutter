import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'receipt_data.dart';
import 'dart:io';

class AddReceipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    String name;
    String date;
    String note;

    return Container(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: 'Title',
                      hintText: "Ex, Shoprite Receipt",
                      border: InputBorder.none,
                      fillColor: Colors.black12,
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  onChanged: (newText) {
                    name = newText;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.datetime,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Date',
                    hintText: "MM/DD/YYYY",
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true,
                    hintStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  onChanged: (newText) {
                    date = newText;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: 'Note',
                      hintText: "Ex, Description",
                      border: InputBorder.none,
                      fillColor: Colors.black12,
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  onChanged: (newText) {
                    note = newText;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Provider.of<ReceiptData>(context, listen: false)
                        .addTask(name, date, note);
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text(
                    'From Camera',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Provider.of<ReceiptData>(context, listen: false)
                        .imgFromCamera();
                  },
                ),
                FlatButton(
                  child: Text(
                    'From Gallery',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Provider.of<ReceiptData>(context, listen: false)
                        .imgFromGallery();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
