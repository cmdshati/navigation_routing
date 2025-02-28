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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Page1Activity("This is from home to activity 1")));
              }, child:Text("Go Activity 1"),),
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2Activity("This is from home to activity 2")));
             }, child:Text("Go Activity 2"),),
           ]
         ),
       );
  }
}

class Page1Activity extends StatelessWidget {
  String msg;

  Page1Activity(this.msg,
      {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(msg),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
            child: ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Page2Activity("This is from activity 1 to activity 2")));
            }, child: const Text("Go Activity 2"))
        )
    );
  }

}

class Page2Activity extends StatelessWidget{

   String msg;
   Page2Activity(
       this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
       appBar:AppBar(
         title:Text(msg) ,
       backgroundColor: Colors.lightGreen,),
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