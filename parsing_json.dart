import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
//import 'dart:async';

void getData() async {
    
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    
    // If the server did return a 200 OK response,
    // then parse the JSON.
    Map data= jsonDecode(response.body);
    print(data);
    print(data['title']);
  
  
  // else 
  // {
  //   // If the server did not return a 200 OK response,
  //   // then throw an exception.
  //   throw Exception('Failed to load api data');
  // }
}

// class Data {
//   final int userId;
//   final int id;
//   final String title;
//   final bool completed;

//   Data({this.userId, this.id, this.title, this.completed});

//   factory Data.fromJson(Map<String, dynamic> json){

//     return Data(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       completed: json['completed'],
//     );
//   }

// }

  // if (response.statusCode == 200) {
  //     // If the call to the server was successful, parse the JSON
  //     List<dynamic> values=new();
  //     values = json.decode(response.body);
  //     if(values.length>0){
  //       for(int i=0;i<values.length;i++){
  //         if(values[i]!=null){
  //           Map<String,dynamic> map=values[i];
  //           _postList .add(Post.fromJson(map));
  //           debugPrint('Id-------${map['id']}');
  //         }
  //       }
  //     }
  //     return _postList;

  //   } else {
  //     // If that call was not successful, throw an error.
  //     throw Exception('Failed to load post');
  //   }

    // Map  data = jsonDecode(response.);
    // print(data);
    



class Location extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<Location> {

   //Future<Data> datareceived;

  @override
void initState(){
  super.initState();
  getData();
  //print(datareceived);
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hey too',)
      
    );
  }
}
