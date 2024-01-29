import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'questionario3.dart';
import 'questionario4.dart';

class Questionario2Screen extends StatefulWidget {
  @override
  _Questionario2ScreenState createState() => _Questionario2ScreenState();
}

class _Questionario2ScreenState extends State<Questionario2Screen> {
  String selectedBloodType = 'A+';
  String selectedSexo = 'M'; // Default gender
  final List<String> bloodTypeOptions = [
    'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'
  ];
  final List<String> sexoOptions = ['M', 'F'];
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController lastDonationController = TextEditingController();

  bool isEligibleToDonate() {
    // Verifique a idade
    final int? age = int.tryParse(ageController.text);
    if (age == null || age < 18) {
      return false;
    }

    // Verifique o peso
    final int? weight = int.tryParse(weightController.text);
    if (weight == null || weight < 50) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário de Elegibilidade'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Text(
                'Idade',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Digite sua idade',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Peso',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Digite seu peso em kg',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Tipo Sanguíneo',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField<String>(
                value: selectedBloodType,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedBloodType = newValue!;
                  });
                },
                items: bloodTypeOptions.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Data da Última Doação',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: lastDonationController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: 'DD/MM/AAAA',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Sexo',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField<String>(
                value: selectedSexo,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedSexo = newValue!;
                  });
                },
                items: sexoOptions.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  if (isEligibleToDonate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Questionario3Screen()),
                    );
                  } else {
                    // Se não for elegível, navegue para a tela de inelegibilidade
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Questionario4Screen()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Próximo',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
