import 'package:flutter/material.dart';

class Q78 extends StatefulWidget {
  const Q78({super.key});

  @override
  State<Q78> createState() => _Q78State();
}

class _Q78State extends State<Q78> {

  List<String> itemList = [];

  TextEditingController _itemController = TextEditingController();

  int? editindex = 0;


    void displayAlert(String msg) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(msg),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("ListView with Context Menu")),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _itemController,
                decoration: InputDecoration(
                  hintText: "Enter item name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_itemController.text.trim().isEmpty) {
                  displayAlert("Please enter a valid name.");
                  return;
                }
                setState(() {
                  if (editindex == null) {
                    itemList.add(_itemController.text.trim());
                  } else {
                    itemList[editindex!] = _itemController.text.trim();
                    editindex = null;
                  }
                  _itemController.clear();
                });
              },
              child: Text(editindex == null ? "Submit" : "Update"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        tileColor: Colors.cyan,
                        title: Text(itemList[index]),
                        onTap: () {
                          displayAlert(itemList[index]);
                        },
                        onLongPress: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Context Menu"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      leading: const Icon(Icons.edit),
                                      title: const Text("Edit"),
                                      onTap: () {
                                        setState(() {
                                          _itemController.text =
                                              itemList[index];
                                          editindex = index;
                                        });
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.delete),
                                      title: const Text("Delete"),
                                      onTap: () {
                                        Navigator.pop(context);
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title:
                                                  const Text("Confirm Delete"),
                                              content: const Text(
                                                  "Are you sure you want to delete this item?"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      itemList.removeAt(index);
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text("Yes"),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                  child: const Text("No"),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.exit_to_app),
                                      title: const Text("Exit"),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}