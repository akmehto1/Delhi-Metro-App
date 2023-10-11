import 'package:flutter/material.dart';
import 'package:metro3latest/graph.dart';
import 'package:metro3latest/location.dart';
import 'package:metro3latest/view.dart';



class textfield extends StatefulWidget {
  const textfield({Key? key}) : super(key: key);

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  // TextEditingController source = TextEditingController();
  // TextEditingController destination= TextEditingController();
  List<String>suggestions=location_name();
  TextEditingController _source = TextEditingController();
  TextEditingController _destination = TextEditingController();

  get source => null;
  late FocusNode _node=FocusNode();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(children: [
          Text("                 DELHI METRO",
          style:TextStyle(fontFamily:'fontmain',fontSize:25)),
        
        ],),

        actions: [

          // Image.asset('assets/images/playstore.png')
        ],
        backgroundColor:Color.fromRGBO(214, 146, 47, 1),
      ),
      body:SafeArea(
        child:Column(
          children: [
           Container(
                width:100,
                height:100,
                child:Image.asset("assets/images/download.png")

            ),
            Container(
              margin:EdgeInsets.only(left:10),
              child:Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return suggestions.where((suggestion) => suggestion.toLowerCase().contains(textEditingValue.text.toLowerCase()));
                },
                onSelected: (String value) {
                  _source.text = value;
                },
                fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode, onFieldSubmitted) {
                  return TextField(
                    autofocus:true,
                    decoration:InputDecoration(
                        labelText: 'Enter Source',
                        fillColor: Colors.blueGrey,



                        labelStyle: TextStyle(
                          color: Colors.grey,  // Change the color of the label text
                          fontSize: 16,       // Change the font size of the label text
                          fontWeight: FontWeight.bold,  // Apply bold style to the label text
                        ),
                        hintText: 'Enter Source Station '
                    ),


                    controller: textEditingController,
                    focusNode: focusNode,
                    onSubmitted: (String value) {
                      if(value!=""){
                        _node.requestFocus();
                      }

                      onFieldSubmitted();
                    },
                  );
                },
              ),
            ),Container(
              margin:EdgeInsets.only(left:10),
              child:Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return suggestions.where((suggestion) => suggestion.toLowerCase().contains(textEditingValue.text.toLowerCase()));
                },
                onSelected: (String value) {
                  _destination.text = value;
                },
                fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode,  onFieldSubmitted) {
                  return TextField(
                    autofocus:true,
                    decoration:InputDecoration(
                        labelText: 'Enter Destination',
                        labelStyle: TextStyle(
                          color: Colors.grey,  // Change the color of the label text
                          fontSize: 16,       // Change the font size of the label text
                          fontWeight: FontWeight.bold,  // Apply bold style to the label text
                        ),
                        hintText: 'Enter Destination Station here'
                    ),
                    controller: textEditingController,
                    focusNode: focusNode,
                    onSubmitted: (String value) {
                      onFieldSubmitted();
                    },
                  );
                },
              ),
            ),
            Center(
              child:Container(
                width:150,


                child:ElevatedButton(
                  onPressed: () {
                    // Graph g = Graph();
                    List<String> ans=[];

                   String src=_source.text;
                   String des=_destination.text;

                    ans=search_route(_source.text, _destination.text);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>view(ans)),
                    );


                    // Add the desired action when the button is pressed
                  },
                  style: ButtonStyle(

                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(137, 107, 74, .9)), // Set the desired background color
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Click Here'),
                      Icon(Icons.search),
                    ],
                  )
                ),
              ),

            )


          ],
        ),
      ),

    );
  }
}
