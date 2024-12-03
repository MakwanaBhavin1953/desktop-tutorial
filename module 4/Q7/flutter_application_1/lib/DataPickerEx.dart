import 'package:flutter/material.dart';

class DatapickerExample extends StatefulWidget {
  const DatapickerExample({super.key});

  @override
  State<DatapickerExample> createState() => _DatapickerExampleState();
}

class _DatapickerExampleState extends State<DatapickerExample> {
  DateTime? selectedDate;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context, firstDate: DateTime(2000), lastDate: DateTime(2100));

    if (pickedDate == null || selectedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.5,
        backgroundColor: Colors.blueGrey,
        title: Text("DatePicker"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              selectedDate == null
                  ? 'No date selected'
                  : 'Selected Date : ${selectedDate!.toLocal()}'
                      .split('pattern')[0],
              style: const TextStyle(fontSize: 18),
            ),
             const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => selectDate(context),
              child: const Text('Select Date'),
            ),
          ],
        ),
      ),
    );
  }
}
