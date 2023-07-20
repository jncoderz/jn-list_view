import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  
  List<String> fruits=["apple","banana","grapes","orange","lemon","mango","guava""apple","banana","grapes","orange","lemon","mango","guava"];
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (context, index){
      return Card(
        child: ListTile(title: Text(fruits[index]),
        trailing: Container(
      width: 100,
      child: Row(children: [
        IconButton(onPressed: (){
          showDialog(context: context, builder: (context)=>SimpleDialog(
        children: [TextField(
          onChanged: (value){
      text = value;
          },
        ),
        ElevatedButton(onPressed: (){
          setState(() {
            fruits[index]=text;
          });
          Navigator.pop(context);
        }, child: Text("update")),
        ],
          ));
        }, icon: Icon(Icons.edit)
          ),
          IconButton(onPressed: (){
        setState(() {
          fruits.removeAt(index);
        });
          }, icon: Icon(Icons.delete)
          ),  
      ],),
      
        ),
        ),
      );
    }),
    
    );
  }
}