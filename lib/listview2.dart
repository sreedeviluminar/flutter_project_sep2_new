import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:List_generate()));
}


class List_generate extends StatelessWidget {

var name=["Anu","Binu","Ciya","Diya","Emma","Faya","Ginoy","Helen","Irin","Jose"];
var messages=["hi",
             "how are you",
             "Are you there",
             "whatup",
             "call me",
             "hi",
             "how are you",
             "Are you there",
             "whatup",
             "call me"];

var images=["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk8hJV0ReuKmuyTcUQSbKqTcVJxDlTFuj97A&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnQac-Hdjsxg15zf4zIDqw4FWskxAeo1RDA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB1WTa6ToiMsvBwJtCFyRys82EQureTk5Ykw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk8hJV0ReuKmuyTcUQSbKqTcVJxDlTFuj97A&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_5XxyOnjH6dpbJTvjbQ35LWvrM2BUvcJlZg&usqp=CAU",
   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnQac-Hdjsxg15zf4zIDqw4FWskxAeo1RDA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB1WTa6ToiMsvBwJtCFyRys82EQureTk5Ykw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk8hJV0ReuKmuyTcUQSbKqTcVJxDlTFuj97A&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_5XxyOnjH6dpbJTvjbQ35LWvrM2BUvcJlZg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnQac-Hdjsxg15zf4zIDqw4FWskxAeo1RDA&usqp=CAU",
];

var icons=[
  Icon(Icons.done_all,color: Colors.blue,) ,
  Icon(Icons.access_time,),
  Icon(Icons.done,) ,
  Icon(Icons.done_all,color: Colors.blue,) ,
  Icon(Icons.access_time,),
  Icon(Icons.done,),
  Icon(Icons.done_all,color: Colors.blue,) ,
  Icon(Icons.access_time,),
  Icon(Icons.done,),
  Icon(Icons.done_all,color: Colors.blue,) ,
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(title: Text("list generate"),),
      body:
        ListView(
          children: List.generate(10, (index) =>ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(images[index]),),
            // Image.asset("assets/images/laptop.jpg")),
            title: Text(name[index]),
            subtitle: Row(
              children: [
               icons[index],
                Text(messages[index]),
              ],
            ),
            trailing: Column(
              children: [
                Text("today"),
                CircleAvatar(backgroundColor: Colors.green,
                radius: 10,child: Text("1"),),

              ],
            ),
          ),),
        )
    );
  }
}
