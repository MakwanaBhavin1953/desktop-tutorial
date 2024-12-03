import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Toolbar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: CustomToolbar(
          spinnerItems: ['Option 1', 'Option 2', 'Option 3'],
          onSpinnerChanged: (String? newValue) {
            
            print('Selected: $newValue');
          },
          searchController: TextEditingController(),
          onSearchChanged: (String searchText) {
           
            print('Search query: $searchText');
          },
        ),
        body: Center(child: Text('Custom Toolbar with Spinner and Search')),
      ),
    );
  }
}


class CustomToolbar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> spinnerItems;
  final ValueChanged<String?> onSpinnerChanged;
  final TextEditingController searchController;
  final ValueChanged<String> onSearchChanged;

  CustomToolbar({
    required this.spinnerItems,
    required this.onSpinnerChanged,
    required this.searchController,
    required this.onSearchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          DropdownButton<String>(
            value: spinnerItems.first,
            icon: Icon(Icons.arrow_downward),
            onChanged: onSpinnerChanged,
            items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(width: 16), 
          Expanded(
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
              onChanged: onSearchChanged,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


