import 'package:flutter/material.dart';

class ListveiwOperation extends StatefulWidget {
  const ListveiwOperation({super.key});

  @override
  State<ListveiwOperation> createState() => _ListveiwOperationState();
}

class _ListveiwOperationState extends State<ListveiwOperation> {
  TextEditingController _textEditingController = TextEditingController();
String? editvalue;
int?editIndex = -1;
List subjectList = [];


void disPlay(String msg){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      content: Text("${msg}"),
    );
  },);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text("Context Menu in ListView"),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: "Enter Subject Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
            
              ),
            ),
            
          ),
          editIndex == -1?ElevatedButton(
            onPressed: () {
              setState(() {
                subjectList.add(_textEditingController.text.toString());
                _textEditingController.clear();
              });
            }, 
            child: Text("Submit"))
            :ElevatedButton(
              onPressed: () {
                setState(() {
                  subjectList[editIndex!] = _textEditingController.text.toString();
                  editIndex=-1;
                  _textEditingController.clear();
                });
              },
               child: Text("Update")),
                 SizedBox(
            height: 20),
            Expanded(child: ListView.builder(
              itemCount: subjectList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(), 
 direction: DismissDirection.endToStart,
 onDismissed: (direction) {
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${subjectList[index]} Deletes!!")));
 },
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: () {
                      disPlay(subjectList[index]);
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("${subjectList[index]}"),
                        trailing: Wrap(

                          children: [
                            IconButton(onPressed: () {
                            setState(() {
                                _textEditingController.text =subjectList[index];
                              editIndex = index;
                            });
                            }, icon: Icon(Icons.edit),color: Colors.black,),
                            IconButton(onPressed: () {
                             setState(() {
                                subjectList.removeAt(index);
                             });
                            }, icon: Icon(Icons.delete),color: Colors.black,),
                            IconButton(onPressed: () {
                              setState(() {
                                showDialog(context: context, builder: (context) {
                                  return AlertDialog(
                                    title: Text(" ${subjectList[index]}"),
                                    content: Text("Details Of ${subjectList[index]}"),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, child: Text("Close"))
                                    ],
                                  );
                                },);
                              });
                            }, icon: Icon(Icons.view_column_outlined))
                          ],
                        ),
                      ),
                    ),
                  ),
                ) );
            },))
        ],
      ),
    );
  }
}