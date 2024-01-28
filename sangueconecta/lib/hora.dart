import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'agendamento_confirmacao.dart';

class ScheduleTimeScreen extends StatefulWidget {
  @override
  _ScheduleTimeScreenState createState() => _ScheduleTimeScreenState();
}

class _ScheduleTimeScreenState extends State<ScheduleTimeScreen> {
  String selectedTime = '08:00';

  List<String> getTimes() {
    List<String> times = [];
    DateTime time = DateTime(2021, 1, 1, 8, 0);
    while (time.isBefore(DateTime(2021, 1, 1, 17, 31))) {
      times.add(DateFormat('HH:mm').format(time));
      time = time.add(Duration(minutes: 30));
    }
    return times;
  }

  @override
  Widget build(BuildContext context) {
    List<String> timeOptions = getTimes();

    return Scaffold(
      appBar: AppBar(
        title: Text('Agende sua doação'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
          value: selectedTime,
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                selectedTime = newValue;
              });
            }
          },
            items: timeOptions.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmScheduleScreen()));
            },
            child: Text('Continuar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Voltar'),
            style: ElevatedButton.styleFrom(primary: Colors.grey),
          ),
        ],
      ),
    );
  }
}
