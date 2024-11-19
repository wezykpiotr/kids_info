import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class AppointmentsInfoPage extends StatelessWidget {
  const AppointmentsInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments Info'),
      ),
      body: Column(
        children: <Widget>[
          const HeatMapCalendar(
            colorsets: {
              1: Colors.red,
              3: Colors.orange,
              5: Colors.yellow,
              7: Colors.green,
              9: Colors.blue,
              11: Colors.indigo,
              13: Colors.purple,
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // replace with your actual list length
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Appointment ${index + 1}'),
                  subtitle: const Text('Appointment details here'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
