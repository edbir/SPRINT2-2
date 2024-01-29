import 'package:flutter/material.dart';
import 'agendamento_confirmacao.dart'; // Certifique-se de ter esta importação

class ScheduleDonationScreen extends StatefulWidget {
  @override
  _ScheduleDonationScreenState createState() => _ScheduleDonationScreenState();
}

class _ScheduleDonationScreenState extends State<ScheduleDonationScreen> {
  DateTime selectedDate = DateTime.now();
  String selectedTime = '08:00';
  final List<String> timeOptions = [
    '08:00', '08:30', '09:00', '09:30', '10:00',
    '10:30', '11:00', '11:30', '12:00', '12:30',
    '13:00', '13:30', '14:00', '14:30', '15:00',
    '15:30', '16:00', '16:30'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agende sua doação'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            CalendarDatePicker(
              initialDate: selectedDate,
              firstDate: DateTime.now().subtract(Duration(days: 30)),
              lastDate: DateTime.now().add(Duration(days: 365)),
              onDateChanged: (DateTime newDate) {
                setState(() {
                  selectedDate = newDate;
                });
              },
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmScheduleScreen(),
                  ),
                );
              },
              child: Text(
                'Continuar',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Voltar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
