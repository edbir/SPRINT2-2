import 'package:flutter/material.dart';
import 'hora.dart';

class ScheduleDonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agende sua doação'),
      ),
      body: Column(
        children: [
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 30)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateChanged: (DateTime newDate) {
              // Aqui você salvaria a nova data selecionada
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleTimeScreen()));
            },
            child: Text('Continuar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Volta para a tela anterior
            },
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
