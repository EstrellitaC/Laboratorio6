import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter I'),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 196, 122, 25),
        ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: const Icon(Icons.circle),
          title: Text('Item ${index+1}'),
          trailing: const Icon(Icons.arrow_forward),
          onTap:() {
            //final route = MaterialPageRoute(builder:(context) => const CardScreen());
            //Navigator.push(context, route);
            if(index == 0){
            Navigator.pushNamed(context, 'listview1');
            }else if(index == 1){
            Navigator.pushNamed(context, 'alert');
            }else if(index == 2){
            Navigator.pushNamed(context, 'listview2');
            }
          },
        ), 
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: 3)
    );
  }
}