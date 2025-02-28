import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),

      );

  }
}

class HomePage  extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text("Inventory App"),
           backgroundColor: Colors.lightGreen,
         ),
         body: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Page1Activity()));
              }, child:Text("Go Activity 1"),),
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2Activity()));
             }, child:Text("Go Activity 2"),),
           ]
         ),
       );
  }
}

class Page1Activity extends StatelessWidget{
  const Page1Activity({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: const Center(child: Text("Activity 1"),),
           backgroundColor: Colors.lightGreen,
         ),
         body: Center(
      child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2Activity()));
      }, child: Text("Go Activity 2"))
       )
       );
  }

}

class Page2Activity extends StatelessWidget{
  const Page2Activity({super.key});

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
       appBar:AppBar(
         title:Text("Actvity 2") ,
       backgroundColor: Colors.grey,),
       body: Center(
         child: CircleAvatar(
           radius: 200,
           child: Image.network(
             "https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg",
             height: 300,
           )
       )
       ),
       );
  }


}