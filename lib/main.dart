import 'package:flutter/material.dart';

import 'package:flutter_gsg/article.dart';
import 'package:flutter_gsg/task_managementt_app/main_task_screen.dart';
import 'data.dart';

void main() {
  runApp( MaterialApp(
    title: 'Flutter Demo',
    home:Main_Task(), // articlApp(),//NewsApp(),//MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

List <article> newArticles=news.map((e) => article.fromMap(e)).toList();
@override
  Widget build(BuildContext context) {
   // String imageUrl="https://unsplash.com/photos/ea1E5cxVjgg";
    String imageUrl =
        'https://images.unsplash.com/photo-1663930981910-7a4c077feb85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1828&q=80';

    return Scaffold(
      appBar: AppBar(title: Text("Sabah App bar"),),
      body:
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        Row(
          children: [
          /*  newArticles.map((e){
              return Container(child: Column(children: [Text(e.auther)],),);
            }).toList(),*/
            SingleChildScrollView(
          child: Column(
          children:
          newArticles.map((e) {
            return( Container(
              child: Image.network(e.url??''),


            ));
            }
      ).toList()
          ),
        ),

        SizedBox(width: 10,),
            CircleAvatar(backgroundImage: AssetImage('images/me.jpg'),radius: 50,),
            SizedBox(width: 30,),
            Column(
             children: [
               Text('Sabah Tartir'),
               Text('Since 3 m')
             ],
               ),
          ],
        ),
          SizedBox(height: 30,),
        Container(

          //margin:const EdgeInsets.all(10),
          width:400,
          height: 400,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/water.png'),fit: BoxFit.cover),
              color: Colors.blueAccent,
             // borderRadius: BorderRadius.circular(30)
          ),

        ),
        Row(children: const [SizedBox(width: 10,),Icon(Icons.favorite,size: 30,),
          Icon(Icons.share_outlined,size: 30,)],
    
        ),
        Text('hello this is my new post')
      ],)
      /*
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
        children: [
          Container(
              margin:EdgeInsets.all(10),width:200,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('images/robot.png'),fit: BoxFit.cover),
                  color:   Colors.lightBlue,
                 // borderRadius: BorderRadius.circular(30)
                shape:BoxShape.circle
                ),


         // child: Image.network(imageUrl)
          ),
          Container(
            margin:const EdgeInsets.all(10),width:200,
            height: 300,
            decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage('images/water.png'),fit: BoxFit.cover),
                color: Colors.blueAccent,
             borderRadius: BorderRadius.circular(30)
            ),

          ),

          Container(width:200,child: Image.asset('images/robot.png')),
          Container(width:200,child: Image.network(imageUrl)),
        ],
      ))*/
        /* Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children:

          StudentData.keys.map((e) {


            return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(e),Text(StudentData[e].toString())]);
          }).toList()


         )*/
     // Image.asset('images/robot.png')//.network(imageUrl)
      ,

      //const Center(child: Text("this is my first app")),

    );
  }
}

//new app


class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: news.map((e) {
              return Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      e['urlToImage'] ?? '',
                      fit: BoxFit.cover,
                      errorBuilder: (x, y, z) {
                        return Image.asset(
                          'images/image1.jpg',
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e['title'],
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(e['description']),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  )
                ],
              );
            }).toList()),
      ),
    );
  }
}

//class task 

class articlApp extends StatelessWidget {
  List <article> newArticles=news.map((e) => article.fromMap(e)).toList();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: Text('News App'),),
      body: SingleChildScrollView(
        child:  Column(
            children: newArticles.map((e) {
              return Column(
               children: [
                 Container(
                   height: 400,
                   width: double.infinity,
                   child: Image.network(e.urlToImage??'',
                  // to check for error case for a network image
                     errorBuilder:
                     (BuildContext context, Object exception, StackTrace? stackTrace) {
                       return const Text('Error on loading this image');},
                     fit: BoxFit.cover,

                   ),
                 ),

              Container(
              //height: 400,
              width: double.infinity, 
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(e.title??'Random title',
                    style:TextStyle(fontSize: 18, fontWeight:FontWeight.bold),),

                    Text(e.auther??'Unknown auther',
                      style:TextStyle(fontSize: 16, fontWeight:FontWeight.w100,),)
                    ,  Text(e.description??'Un able to load article description'),

                  ],
                  
                ),
              
              
              ),
                 Divider(
                   color: Colors.black12,
                 )
               ],
              );
            }).toList()),
      ),
      
      
    );
  }


}









