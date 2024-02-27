// Important notes in flutter as follows:
// 1.Mobile ui framework for creating native apps
// 2.Single code base for both android and ios
//the main structure dart is :
// void main(){ in front we use void beacuse we are not returning anything
//   print("Hello");
// }
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      //basic structure of the app
      // home: Text("Hello World"),
      //Now we will explore scaffold widget which allows us to create a basic structure of the app
      home: MyWidget(),
    ));

//Stateless widget:- Stateless Widget is a widget that cannot change its state during the runtime of the app and it is immutable
//Staless wiget hot reloads the app and stateful widget hot restarts the app build(buildcontext context is used to build the app and it is a parameter of the build method of the stateless widget and stateful widget)
//Stateful widget:- Stateful Widget is a widget that can change its state during the runtime of the app and it is mutable
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  //we use override keyword to override the build method of the stateless widget and we have use build(buildcontext) instead of stateless widget
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.blue[400],
        ),
        body:
            //Expanded widget is used to expand the children of the row and column widget
            Row(
          children: <Widget>[
            Expanded(
              //total is 6 so 3/6=1/2 and 2/6=1/3 and 1/6=1/6
              //flex is used to give the ratio of the children of the row and column widget
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child: const Text("1")),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.indigo,
                  child: const Text("2")),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.amber,
                  child: const Text("3")),
            ),
          ],
        ),

        // Column(
        //   //mainAxisAlignment is used to align the children of the column widget
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,

        //   children: <Widget>[
        //     //we can add row and column
        //     const Row(
        //       children: <Widget>[
        //         Text("Row-1"),
        //         Text("Row-2"),
        //       ],
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(30.0),
        //       color: Colors.cyan,
        //       child: const Text("one"),
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(40.0),
        //       color: Colors.grey,
        //       child: const Text("two"),
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(50.0),
        //       color: Colors.green,
        //       child: const Text("three"),
        //     ),
        //   ],
        // ),

        //we use row widget to align the children of the row widget
        // Row(
        //   //mainAxisAlignment is used to align the children of the row widget
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   //crossAxisAlignment is used to align the children of the row widget
        //   // crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     const Text("Hello "),
        //     TextButton(onPressed: () {}, child: const Text("Click me")),
        //     Container(
        //       color: Colors.cyan,
        //       padding: const EdgeInsets.all(30.0),
        //       child: const Text("Inside container"),
        //     )
        //   ],
        // ),

        //we use padding widget to give padding to the container
        //  const Padding(
        //   padding: EdgeInsets.all(20.0),
        //   child: Text("Hello World"),
        // ),

        //container is a widget that allows us to create a container and it is used to create a container
        // Container(
        //   //when conatainer has no child then it will take the whole screen
        //   color: Colors.grey[400],
        //   //EgeInsets is used to give padding to the container
        //   padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        //   margin: const EdgeInsets.all(30.0),
        //   child: const Text("hello world"),
        // ),

        // Center(
        //This is for text widget
        // child: Text(
        //   "Hello World",
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.0,
        //     color: Color.fromARGB(255, 171, 176, 183),
        //     fontFamily: 'AntaRegular',
        //   ),
        // ),

        //This is for image widget
        // child: Image.asset('assets/first.jpg'),

        //This is for icon widget
        // child: Icon(
        //   //first argument is the icon and second argument is the color and third argument is the size of the icon
        // Icons.airport_shuttle,
        // color: Colors.blue,
        // size: 50.0,
        // )

        //This is for button widget
        //   child: ElevatedButton.icon(
        //   onPressed: () {},
        //   icon: const Icon(Icons.mail_lock_outlined),
        //   label: const Text("mail me"),
        //  )
        //  ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue[200],
          child: const Text("Click "),
        ));
  }
}
